# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="pr2eus"
HOMEPAGE="http://ros.org/wiki/pr2eus"
SRC_URI="https://github.com/tork-a/jsk_pr2eus-release/archive/release/kinetic/pr2eus/0.3.10-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/control_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/euscollada
    ros-kinetic/move_base_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/pr2_description
    ros-kinetic/pr2_msgs
    ros-kinetic/roseus
    ros-kinetic/rostest
    ros-kinetic/sound_play
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/rosgraph_msgs
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
