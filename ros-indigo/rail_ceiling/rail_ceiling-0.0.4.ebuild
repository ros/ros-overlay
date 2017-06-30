# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Overhead Camera System for Tracking AR Tags"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/rail_ceiling-release/archive/release/indigo/rail_ceiling/0.0.4-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/ar_track_alvar
    ros-indigo/ar_track_alvar_msgs
    ros-indigo/geometry_msgs
    ros-indigo/image_view
    ros-indigo/robot_state_publisher
    ros-indigo/roscpp
    ros-indigo/roslib
    ros-indigo/tf
    ros-indigo/usb_cam
    ros-indigo/xacro
    dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    virtual/pkgconfig
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
