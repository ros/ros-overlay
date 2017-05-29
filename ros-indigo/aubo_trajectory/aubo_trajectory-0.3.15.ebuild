# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The aubo_trajectory package"
HOMEPAGE="http://wiki.ros.org/aubo_trajectory"
SRC_URI="https://github.com/auboliuxin/aubo_robot-release/archive/release/indigo/aubo_trajectory/0.3.15-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/control_msgs
    ros-indigo/pluginlib
    ros-indigo/moveit_ros_perception
    ros-indigo/std_msgs
    ros-indigo/sensor_msgs
    ros-indigo/moveit_ros_planning_interface
    ros-indigo/moveit_fake_controller_manager
    ros-indigo/aubo_msgs
    ros-indigo/moveit_core
    ros-indigo/actionlib
    ros-indigo/interactive_markers
"
DEPEND="${RDEPEND}
    ros-indigo/cmake_modules
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
