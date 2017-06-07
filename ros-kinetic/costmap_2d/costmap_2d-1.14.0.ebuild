# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="This package provides an implementation of a 2D costmap that takes in sensor
   "
HOMEPAGE="http://wiki.ros.org/costmap_2d"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/costmap_2d/1.14.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/geometry_msgs
    ros-kinetic/laser_geometry
    ros-kinetic/map_msgs
    ros-kinetic/message_filters
    ros-kinetic/message_runtime
    ros-kinetic/nav_msgs
    ros-kinetic/pcl_conversions
    ros-kinetic/pcl_ros
    ros-kinetic/pluginlib
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/rostest
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/tf
    ros-kinetic/visualization_msgs
    ros-kinetic/voxel_grid
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/cmake_modules
    ros-kinetic/message_generation
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
