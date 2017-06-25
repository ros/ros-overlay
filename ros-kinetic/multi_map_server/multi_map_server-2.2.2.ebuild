# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="multi_map_server provides the"
HOMEPAGE="http://ros.org/wiki/map_server"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/kinetic/multi_map_server/2.2.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/map_server
    ros-kinetic/nav_msgs
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/rospy
    ros-kinetic/tf
    media-libs/sdl-image
    dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/jsk_tools
    ros-kinetic/rosmake
    dev-python/pillow
    dev-python/pyyaml
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
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
