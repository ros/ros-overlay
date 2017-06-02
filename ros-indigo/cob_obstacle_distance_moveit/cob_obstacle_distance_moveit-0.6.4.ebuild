# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package provides nodes for calculating the minimal distance to robot links,"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/indigo/cob_obstacle_distance_moveit/0.6.4-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/cmake_modules
    ros-indigo/cob_control_msgs
    ros-indigo/cob_srvs
    ros-indigo/eigen_conversions
    ros-indigo/fcl
    ros-indigo/geometric_shapes
    ros-indigo/geometry_msgs
    ros-indigo/moveit_core
    ros-indigo/moveit_msgs
    ros-indigo/moveit_ros_perception
    ros-indigo/moveit_ros_planning_interface
    ros-indigo/roscpp
    ros-indigo/rospy
    ros-indigo/tf
    ros-indigo/tf_conversions
    dev-libs/boost
    dev-cpp/eigen
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
