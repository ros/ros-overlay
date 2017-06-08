# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="rqt_web is a simple web content viewer for rqt. Users can show web content in Qt"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_web-release/archive/release/kinetic/rqt_web/0.4.8-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/python_qt_binding
    ros-kinetic/qt_gui
    ros-kinetic/rospy
    ros-kinetic/rqt_gui
    ros-kinetic/rqt_gui_py
    ros-kinetic/webkit_dependency
    dev-python/rospkg
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
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-kinetic
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
