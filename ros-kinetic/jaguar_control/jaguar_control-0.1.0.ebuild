# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="DrRobot's Jaguar 4X4 controller configurations"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gstavrinos/jaguar-release/archive/release/kinetic/jaguar_control/0.1.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/controller_manager
    ros-kinetic/diff_drive_controller
    ros-kinetic/joint_state_controller
    ros-kinetic/joint_trajectory_controller
    ros-kinetic/joy
    ros-kinetic/robot_localization
    ros-kinetic/rostopic
    ros-kinetic/teleop_twist_joy
    ros-kinetic/twist_mux
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/roslaunch
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
