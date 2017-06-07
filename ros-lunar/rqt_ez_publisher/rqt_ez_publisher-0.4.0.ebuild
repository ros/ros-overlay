# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The rqt_ez_publisher package"
HOMEPAGE="http://wiki.ros.org/rqt_ez_publisher"
SRC_URI="https://github.com/OTL/rqt_ez_publisher-release/archive/release/lunar/rqt_ez_publisher/0.4.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/geometry_msgs
    ros-lunar/rospy
    ros-lunar/rqt_gui
    ros-lunar/rqt_gui_py
    ros-lunar/rqt_py_common
    ros-lunar/tf
    ros-lunar/tf2_msgs
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
    ros-lunar/rostest
    dev-python/catkin_pkg
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
