# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="This package attempts to show the features of ROS python API step-by-step,
    i"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_tutorials-release/archive/release/lunar/rospy_tutorials/0.8.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/message_runtime
    ros-lunar/rospy
    ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
    ros-lunar/message_generation
    ros-lunar/rostest
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
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-lunar
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
