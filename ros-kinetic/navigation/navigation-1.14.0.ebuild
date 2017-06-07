# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="A 2D navigation stack that takes in information from odometry, sensor
        st"
HOMEPAGE="http://wiki.ros.org/navigation"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/navigation/1.14.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( BSD LGPL-2 LGPL-2 )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/amcl
    ros-kinetic/base_local_planner
    ros-kinetic/carrot_planner
    ros-kinetic/clear_costmap_recovery
    ros-kinetic/costmap_2d
    ros-kinetic/dwa_local_planner
    ros-kinetic/fake_localization
    ros-kinetic/global_planner
    ros-kinetic/map_server
    ros-kinetic/move_base
    ros-kinetic/move_base_msgs
    ros-kinetic/move_slow_and_clear
    ros-kinetic/nav_core
    ros-kinetic/navfn
    ros-kinetic/robot_pose_ekf
    ros-kinetic/rotate_recovery
    ros-kinetic/voxel_grid
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
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
