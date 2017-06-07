# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The operator is a lightweight, purely reactive obstacle-avoidance
    module for"
HOMEPAGE="http://wiki.ros.org/nav2d_operator"
SRC_URI="https://github.com/skasperski/navigation_2d-release/archive/release/kinetic/nav2d_operator/0.3.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/costmap_2d
    ros-kinetic/message_runtime
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/tf
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/message_generation
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
