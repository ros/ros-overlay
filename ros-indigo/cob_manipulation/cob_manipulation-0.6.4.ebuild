# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The cob_manipulation stack includes packages that provide manipulation capabilit"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/indigo/cob_manipulation/0.6.4-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/cob_collision_monitor
    ros-indigo/cob_grasp_generation
    ros-indigo/cob_kinematics
    ros-indigo/cob_lookat_action
    ros-indigo/cob_moveit_config
    ros-indigo/cob_moveit_interface
    ros-indigo/cob_obstacle_distance_moveit
    ros-indigo/cob_pick_place_action
    ros-indigo/cob_tactiletools
    ros-indigo/cob_tray_monitor
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
