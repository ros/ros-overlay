# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The pr2_mechanism_controllers package contains realtime
    controllers that are"
HOMEPAGE="http://ros.org/pr2_mechanism_controllers"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/indigo/pr2_mechanism_controllers/1.10.13-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/control_toolbox
    ros-indigo/pluginlib
    ros-indigo/realtime_tools
    ros-indigo/roscpp
    ros-indigo/tf
    ros-indigo/filters
    ros-indigo/geometry_msgs
    ros-indigo/std_msgs
    ros-indigo/diagnostic_updater
    ros-indigo/rosconsole
    ros-indigo/nav_msgs
    ros-indigo/pr2_controller_interface
    ros-indigo/pr2_controllers_msgs
    ros-indigo/robot_mechanism_controllers
    ros-indigo/pr2_mechanism_msgs
    ros-indigo/diagnostic_msgs
    ros-indigo/visualization_msgs
    ros-indigo/rospy
    ros-indigo/pr2_mechanism_model
    ros-indigo/pr2_msgs
    ros-indigo/message_runtime
    ros-indigo/angles
"
DEPEND="${RDEPEND}
    ros-indigo/message_generation
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
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
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
