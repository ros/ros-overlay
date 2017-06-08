# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="An implementation of ROS in pure-Java with Android support."
HOMEPAGE="http://ros.org/wiki/rosjava_core"
SRC_URI="https://github.com/rosjava-release/rosjava_core-release/archive/release/kinetic/rosjava_core/0.3.4-1.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/geometry_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/rosgraph_msgs
    ros-kinetic/rosjava_bootstrap
    ros-kinetic/rosjava_build_tools
    ros-kinetic/rosjava_messages
    ros-kinetic/rosjava_test_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/tf2_msgs
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
