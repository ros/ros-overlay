# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The rotors_gazebo_plugins package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ethz-asl/rotors_simulator-release/archive/release/indigo/rotors_gazebo_plugins/2.1.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/cv_bridge
    ros-indigo/gazebo_ros
    ros-indigo/geometry_msgs
    ros-indigo/mav_msgs
    ros-indigo/octomap
    ros-indigo/octomap_msgs
    ros-indigo/octomap_ros
    ros-indigo/rosbag
    ros-indigo/roscpp
    ros-indigo/rotors_comm
    ros-indigo/rotors_control
    ros-indigo/std_srvs
    ros-indigo/tf
    dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/cmake_modules
    sci-electronics/gazebo
    dev-libs/protobuf
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
