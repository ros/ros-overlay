# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Provide a node that extracts checkerboard corners from ROS images.
    This pack"
HOMEPAGE="http://ros.org/wiki/image_cb_detector"
SRC_URI="https://github.com/ros-gbp/calibration-release/archive/release/lunar/image_cb_detector/0.10.14-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/actionlib
    ros-lunar/actionlib_msgs
    ros-lunar/calibration_msgs
    ros-lunar/cv_bridge
    ros-lunar/geometry_msgs
    ros-lunar/image_transport
    ros-lunar/message_filters
    ros-lunar/message_runtime
    ros-lunar/roscpp
    ros-lunar/sensor_msgs
    ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
    ros-lunar/message_generation
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
    export DEST_SETUP_DIR=/${ROS_PREFIX}    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DCATKIN_BUILD_BINARY_PATCKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}/build
    make install || dieNone
}
