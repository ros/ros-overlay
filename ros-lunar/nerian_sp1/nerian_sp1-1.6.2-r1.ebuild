# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Node for the SP1 Stereo Vision System by Nerian Vision Technologies"
HOMEPAGE="http://wiki.ros.org/nerian_sp1"
SRC_URI="https://github.com/nerian-vision/nerian_sp1-release/archive/release/lunar/nerian_sp1/1.6.2-1.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/cv_bridge
    ros-lunar/message_runtime
    ros-lunar/roscpp
    ros-lunar/sensor_msgs
    ros-lunar/std_msgs
    dev-libs/boost
    media-libs/libsdl
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
    ros-lunar/message_generation
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
    export DEST_SETUP_DIR=/${ROS_PREFIX}    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DCATKIN_BUILD_BINARY_PATCKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}/build
    make install || dieNone
}
