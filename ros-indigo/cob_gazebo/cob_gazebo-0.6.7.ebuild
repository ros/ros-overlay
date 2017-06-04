# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Launch files and tools for 3D simulation of Care-O-bot in gazebo simulator."
HOMEPAGE="http://ros.org/wiki/cob_gazebo"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/indigo/cob_gazebo/0.6.7-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/cob_controller_configuration_gazebo
    ros-indigo/cob_default_robot_config
    ros-indigo/cob_gazebo_ros_control
    ros-indigo/cob_hardware_config
    ros-indigo/cob_script_server
    ros-indigo/control_msgs
    ros-indigo/gazebo_plugins
    ros-indigo/gazebo_ros
    ros-indigo/gazebo_ros_control
    ros-indigo/rospy
    ros-indigo/rostest
    ros-indigo/trajectory_msgs
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
