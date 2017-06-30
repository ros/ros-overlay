# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The cob_obstacle_distance package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/indigo/cob_obstacle_distance/0.6.14-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/cmake_modules
    ros-indigo/cob_control_msgs
    ros-indigo/cob_srvs
    ros-indigo/dynamic_reconfigure
    ros-indigo/eigen_conversions
    ros-indigo/fcl
    ros-indigo/geometry_msgs
    ros-indigo/interactive_markers
    ros-indigo/joint_state_publisher
    ros-indigo/kdl_conversions
    ros-indigo/kdl_parser
    ros-indigo/moveit_msgs
    ros-indigo/orocos_kdl
    ros-indigo/robot_state_publisher
    ros-indigo/roscpp
    ros-indigo/roslib
    ros-indigo/rospy
    ros-indigo/rviz
    ros-indigo/sensor_msgs
    ros-indigo/shape_msgs
    ros-indigo/std_msgs
    ros-indigo/tf
    ros-indigo/tf_conversions
    ros-indigo/urdf
    ros-indigo/visualization_msgs
    ros-indigo/xacro
    media-libs/assimp
    dev-libs/boost
    dev-cpp/eigen
    virtual/pkgconfig
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
