# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="MAVROS -- MAVLink extendable communication node for ROS
    with proxy for Groun"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/lunar/mavros/0.19.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( GPL-3 LGPL-3 BSD )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/diagnostic_msgs
    ros-lunar/diagnostic_updater
    ros-lunar/eigen_conversions
    ros-lunar/geometry_msgs
    ros-lunar/libmavconn
    ros-lunar/mavlink
    ros-lunar/mavros_msgs
    ros-lunar/message_runtime
    ros-lunar/nav_msgs
    ros-lunar/pluginlib
    ros-lunar/rosconsole_bridge
    ros-lunar/roscpp
    ros-lunar/rospy
    ros-lunar/sensor_msgs
    ros-lunar/std_msgs
    ros-lunar/std_srvs
    ros-lunar/tf2_ros
    dev-libs/boost
    dev-cpp/eigen
"
DEPEND="${RDEPEND}
    ros-lunar/angles
    ros-lunar/catkin
    ros-lunar/cmake_modules
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

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
        -DPYTHON_EXECUTABLE="/opt/ros/lunar/env.sh python3.5"
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
