# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="gazebo_ros_control"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/lunar/gazebo_ros_control/2.7.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/angles
    ros-lunar/control_toolbox
    ros-lunar/controller_manager
    ros-lunar/gazebo_ros
    ros-lunar/hardware_interface
    ros-lunar/joint_limits_interface
    ros-lunar/pluginlib
    ros-lunar/roscpp
    ros-lunar/std_msgs
    ros-lunar/transmission_interface
    ros-lunar/urdf
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
    ros-lunar/gazebo_dev
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
        -DPYTHON_EXECUTABLE="/opt/ros/lunar/env.sh python3.5"
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
