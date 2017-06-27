# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/robot_state_publisher"
SRC_URI="https://github.com/ros-gbp/robot_state_publisher-release/archive/release/indigo/robot_state_publisher/1.11.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/catkin
    ros-indigo/kdl_parser
    ros-indigo/orocos_kdl
    ros-indigo/rosconsole
    ros-indigo/roscpp
    ros-indigo/rostime
    ros-indigo/sensor_msgs
    ros-indigo/tf
    ros-indigo/tf2_kdl
    ros-indigo/tf2_ros
    ros-indigo/tf_conversions
    dev-cpp/eigen
"
DEPEND="${RDEPEND}
    ros-indigo/cmake_modules
    ros-indigo/rostest
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
