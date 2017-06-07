# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="MAVLink message marshaling library.
  This package provides C-headers and C++11 "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavlink-gbp-release/archive/release/lunar/mavlink/2017.6.6-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/catkin
    dev-lang/python
"
DEPEND="${RDEPEND}
    dev-util/cmake
    dev-python/future
    dev-python/lxml
    dev-python/setuptools
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
