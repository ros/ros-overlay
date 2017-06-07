# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The katana_moveit_ikfast_plugin package"
HOMEPAGE="http://wiki.ros.org/katana_moveit_ikfast_plugin"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_moveit_ikfast_plugin/1.1.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( BSD Apache-1.0 )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/moveit_core
    ros-kinetic/pluginlib
    ros-kinetic/roscpp
    ros-kinetic/tf_conversions
    virtual/lapack
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
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
