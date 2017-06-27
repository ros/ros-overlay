# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Online automated pattern-based object tracker relying on visual servoing.

    v"
HOMEPAGE="http://wiki.ros.org/visp_auto_tracker"
SRC_URI="https://github.com/lagadic/vision_visp-release/archive/release/indigo/visp_auto_tracker/0.10.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/geometry_msgs
    ros-indigo/message_filters
    ros-indigo/resource_retriever
    ros-indigo/roscpp
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/visp
    ros-indigo/visp_bridge
    ros-indigo/visp_tracker
    media-libs/libdmtx
    media-gfx/zbar
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-indigo
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
