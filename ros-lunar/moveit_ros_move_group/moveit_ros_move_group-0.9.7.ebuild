# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The move_group node for MoveIt"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_ros_move_group/0.9.7-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/actionlib
    ros-lunar/moveit_core
    ros-lunar/moveit_kinematics
    ros-lunar/moveit_ros_planning
    ros-lunar/pluginlib
    ros-lunar/std_srvs
    ros-lunar/tf
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
