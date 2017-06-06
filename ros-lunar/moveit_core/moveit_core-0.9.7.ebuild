# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Core libraries used by MoveIt!"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_core/0.9.7-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/eigen_conversions
    ros-lunar/eigen_stl_containers
    ros-lunar/geometric_shapes
    ros-lunar/geometry_msgs
    ros-lunar/kdl_parser
    ros-lunar/moveit_msgs
    ros-lunar/octomap
    ros-lunar/octomap_msgs
    ros-lunar/random_numbers
    ros-lunar/rostime
    ros-lunar/sensor_msgs
    ros-lunar/srdfdom
    ros-lunar/std_msgs
    ros-lunar/trajectory_msgs
    ros-lunar/urdf
    ros-lunar/visualization_msgs
    media-libs/assimp
    dev-libs/boost
    dev-cpp/eigen
    dev-libs/console_bridge
    sci-libs/fcl
    dev-libs/urdfdom
    dev-libs/urdfdom_headers
"
DEPEND="${RDEPEND}
    ros-lunar/catkin
    ros-lunar/roslib
    ros-lunar/shape_msgs
    virtual/pkgconfig
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
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
