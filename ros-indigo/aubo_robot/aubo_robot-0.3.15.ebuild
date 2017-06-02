# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Description,drivers, moveit and utilities for AUBO Robot Arms."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/auboliuxin/aubo_robot-release/archive/release/indigo/aubo_robot/0.3.15-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/aubo_control
    ros-indigo/aubo_description
    ros-indigo/aubo_driver
    ros-indigo/aubo_gazebo
    ros-indigo/aubo_i5_moveit_config
    ros-indigo/aubo_kinematics
    ros-indigo/aubo_msgs
    ros-indigo/aubo_new_driver
    ros-indigo/aubo_panel
    ros-indigo/aubo_trajectory
    ros-indigo/aubo_trajectory_filters
"
DEPEND="${RDEPEND}
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
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
