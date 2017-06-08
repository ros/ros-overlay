# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The actionlib_tutorials package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/common_tutorials-release/archive/release/kinetic/actionlib_tutorials/0.1.10-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/actionlib
    ros-kinetic/message_runtime
    ros-kinetic/roscpp
"
DEPEND="${RDEPEND}
    ros-kinetic/actionlib_msgs
    ros-kinetic/catkin
    ros-kinetic/message_generation
    ros-kinetic/std_msgs
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
