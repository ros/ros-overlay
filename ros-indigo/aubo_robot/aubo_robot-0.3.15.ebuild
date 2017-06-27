# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Description,drivers, moveit and utilities for AUBO Robot Arms."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/auboliuxin/aubo_robot-release/archive/release/indigo/aubo_robot/0.3.15-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/aubo_control
    ros-indigo/aubo_description
    ros-indigo/aubo_driver
    ros-indigo/aubo_gazebo
    ros-indigo/aubo_i5_moveit_config
    ros-indigo/aubo_kinematics
    ros-indigo/aubo_msgs
    ros-indigo/aubo_new_driver
    ros-indigo/aubo_panel
    ros-indigo/aubo_trajectory
    ros-indigo/aubo_trajectory_filters
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-indigo
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
