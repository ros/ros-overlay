# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="This stack provides Python bindings for Qt.
    There are two providers: pyside "
HOMEPAGE="http://ros.org/wiki/python_qt_binding"
SRC_URI="https://github.com/ros-gbp/python_qt_binding-release/archive/release/kinetic/python_qt_binding/0.3.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    dev-python/PyQt5
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/rosbuild
    dev-qt/qtcore:5
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
