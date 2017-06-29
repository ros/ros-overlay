# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="This package is a ROS wrapper for Alvar, an open source AR tag tracking library."
HOMEPAGE="http://ros.org/wiki/ar_track_alvar"
SRC_URI="https://github.com/ros-gbp/ar_track_alvar-release/archive/release/lunar/ar_track_alvar/0.7.1-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-lunar/ar_track_alvar_msgs
    ros-lunar/cv_bridge
    ros-lunar/dynamic_reconfigure
    ros-lunar/geometry_msgs
    ros-lunar/image_transport
    ros-lunar/message_runtime
    ros-lunar/pcl_conversions
    ros-lunar/pcl_ros
    ros-lunar/resource_retriever
    ros-lunar/roscpp
    ros-lunar/rospy
    ros-lunar/sensor_msgs
    ros-lunar/std_msgs
    ros-lunar/tf
    ros-lunar/tf2
    ros-lunar/visualization_msgs
    dev-libs/tinyxml
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
    ros-lunar/cmake_modules
    ros-lunar/message_generation
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="/opt/ros/lunar"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D%/}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-lunar
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
