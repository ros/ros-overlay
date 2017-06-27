# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Autonomous Navigation Capabilities for CARL"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/carl_navigation-release/archive/release/indigo/carl_navigation/0.0.12-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/actionlib_msgs
    ros-indigo/carl_description
    ros-indigo/costmap_2d
    ros-indigo/dwa_local_planner
    ros-indigo/dynamic_reconfigure
    ros-indigo/geometry_msgs
    ros-indigo/gmapping
    ros-indigo/message_runtime
    ros-indigo/move_base
    ros-indigo/move_base_msgs
    ros-indigo/nav_msgs
    ros-indigo/navfn
    ros-indigo/rail_collada_models
    ros-indigo/rail_maps
    ros-indigo/robot_pose_publisher
    ros-indigo/roscpp
    ros-indigo/roslib
    ros-indigo/tf
    dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/message_generation
    ros-indigo/rail_ceiling
    virtual/pkgconfig
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
