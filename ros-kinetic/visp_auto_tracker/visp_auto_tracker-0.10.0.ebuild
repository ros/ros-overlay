# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Online automated pattern-based object tracker relying on visual servoing.

    v"
HOMEPAGE="http://wiki.ros.org/visp_auto_tracker"
SRC_URI="https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_auto_tracker/0.10.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/geometry_msgs
    ros-kinetic/message_filters
    ros-kinetic/resource_retriever
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/visp
    ros-kinetic/visp_bridge
    ros-kinetic/visp_tracker
    media-libs/libdmtx
    media-gfx/zbar
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
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
        -DPYTHON_INSTALL_DIR=lib64/site-packages/python3.5        -DPYTHON_EXECUTABLE=/usr/bin/ros-python
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
