# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="multisense_ros"
HOMEPAGE="https://bitbucket.org/crl/multisense_ros"
SRC_URI="https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense_ros/4.0.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/angles
    ros-kinetic/cv_bridge
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/genmsg
    ros-kinetic/geometry_msgs
    ros-kinetic/image_geometry
    ros-kinetic/image_transport
    ros-kinetic/message_generation
    ros-kinetic/message_runtime
    ros-kinetic/multisense_lib
    ros-kinetic/rosbag
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/stereo_msgs
    ros-kinetic/tf
    media-libs/libjpeg-turbo
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    dev-cpp/yaml-cpp
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
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-kinetic
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
