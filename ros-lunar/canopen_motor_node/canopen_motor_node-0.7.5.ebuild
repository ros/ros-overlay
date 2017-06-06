# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package extends the canopen_chain_node with specialized handling for canope"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/lunar/canopen_motor_node/0.7.5-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/canopen_402
    ros-lunar/canopen_chain_node
    ros-lunar/controller_manager
    ros-lunar/controller_manager_msgs
    ros-lunar/filters
    ros-lunar/hardware_interface
    ros-lunar/joint_limits_interface
    ros-lunar/urdf
    dev-cpp/muParser
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
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
