# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="ROS-Industrial support for ABB manipulators (metapackage)."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb/1.3.0-1.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( BSD Apache-2.0 )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/abb_driver
    ros-kinetic/abb_irb2400_moveit_config
    ros-kinetic/abb_irb2400_moveit_plugins
    ros-kinetic/abb_irb2400_support
    ros-kinetic/abb_irb4400_support
    ros-kinetic/abb_irb5400_support
    ros-kinetic/abb_irb6600_support
    ros-kinetic/abb_irb6640_moveit_config
    ros-kinetic/abb_irb6640_support
    ros-kinetic/abb_resources
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
