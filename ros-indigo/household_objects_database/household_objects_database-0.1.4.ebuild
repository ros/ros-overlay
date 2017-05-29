# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Class definitions and a few convenience functions for interfacing
    with a spe"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/household_objects_database-release/archive/release/indigo/household_objects_database/0.1.4-0.tar.gz"

LICENSE="BSD, except for source files individually marked otherwise"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/household_objects_database_msgs
    ros-indigo/rosservice
    ros-indigo/rospy
    ros-indigo/manipulation_msgs
    ros-indigo/actionlib
    ros-indigo/rosgraph
    ros-indigo/roscpp
    ros-indigo/roslib
    ros-indigo/sql_database
"
DEPEND="${RDEPEND}
    ros-indigo/tf
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
