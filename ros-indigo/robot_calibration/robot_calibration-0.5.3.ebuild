# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Calibrate a Robot"
HOMEPAGE="http://ros.org/wiki/robot_calibration"
SRC_URI="https://github.com/fetchrobotics-gbp/robot_calibration-release/archive/release/indigo/robot_calibration/0.5.3-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="Apache-2"

KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/camera_calibration_parsers
    ros-indigo/control_msgs
    ros-indigo/cv_bridge
    ros-indigo/geometry_msgs
    ros-indigo/kdl_parser
    ros-indigo/moveit_msgs
    ros-indigo/nav_msgs
    ros-indigo/orocos_kdl
    ros-indigo/robot_calibration_msgs
    ros-indigo/rosbag
    ros-indigo/roscpp
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/tf
    sci-libs/ceres-solver
    dev-libs/protobuf
    sci-libs/suitesparse
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    dev-cpp/gflags
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
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
