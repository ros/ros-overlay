# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The motoman driver package includes nodes for interfacing with a motoman
     in"
HOMEPAGE="http://ros.org/wiki/motoman_driver"
SRC_URI="https://github.com/ros-industrial-release/motoman-release/archive/release/indigo/motoman_driver/0.3.7-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/actionlib_msgs
    ros-indigo/control_msgs
    ros-indigo/industrial_msgs
    ros-indigo/industrial_robot_client
    ros-indigo/industrial_utils
    ros-indigo/motoman_msgs
    ros-indigo/roscpp
    ros-indigo/sensor_msgs
    ros-indigo/simple_message
    ros-indigo/std_msgs
    ros-indigo/std_srvs
    ros-indigo/trajectory_msgs
    ros-indigo/urdf
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/roslint
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
