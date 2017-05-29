# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains scripts for making a PR2 deliver a small
  object from one"
HOMEPAGE="http://ros.org/wiki/pr2_delivery"
SRC_URI="https://github.com/pr2-gbp/pr2_delivery-release/archive/release/indigo/pr2_delivery/1.0.6-1.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/rospy
    ros-indigo/pr2_tuck_arms_action
    ros-indigo/pr2_gripper_sensor_action
    ros-indigo/actionlib_msgs
    ros-indigo/pr2_gripper_sensor_msgs
    ros-indigo/geometry_msgs
    ros-indigo/std_msgs
    ros-indigo/sensor_msgs
    ros-indigo/tf
    ros-indigo/pr2_move_base
    ros-indigo/actionlib
"
DEPEND="${RDEPEND}
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
