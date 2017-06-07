# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/base_local_planner"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/base_local_planner/1.14.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/angles
    ros-kinetic/costmap_2d
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/geometry_msgs
    ros-kinetic/message_generation
    ros-kinetic/nav_core
    ros-kinetic/nav_msgs
    ros-kinetic/pcl_ros
    ros-kinetic/pluginlib
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/rospy
    ros-kinetic/std_msgs
    ros-kinetic/tf
    ros-kinetic/visualization_msgs
    ros-kinetic/voxel_grid
    dev-cpp/eigen
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/cmake_modules
    ros-kinetic/pcl_conversions
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/site-packages/python3.5
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
