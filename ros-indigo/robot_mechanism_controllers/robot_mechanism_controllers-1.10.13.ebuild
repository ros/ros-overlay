# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Generic Mechanism Controller Library"
HOMEPAGE="http://ros.org/wiki/robot_mechanism_controllers"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/indigo/robot_mechanism_controllers/1.10.13-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/angles
    ros-indigo/control_msgs
    ros-indigo/control_toolbox
    ros-indigo/diagnostic_msgs
    ros-indigo/eigen_conversions
    ros-indigo/filters
    ros-indigo/geometry_msgs
    ros-indigo/kdl_parser
    ros-indigo/message_filters
    ros-indigo/pluginlib
    ros-indigo/pr2_controller_interface
    ros-indigo/pr2_controller_manager
    ros-indigo/pr2_controllers_msgs
    ros-indigo/pr2_mechanism_model
    ros-indigo/realtime_tools
    ros-indigo/roscpp
    ros-indigo/rospy
    ros-indigo/std_msgs
    ros-indigo/tf
    ros-indigo/tf_conversions
    ros-indigo/trajectory_msgs
    sys-devel/libtool
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-indigo/catkin
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    if [[ ! -d ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages ]]; then
        mkdir -p ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages
    fi

    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
