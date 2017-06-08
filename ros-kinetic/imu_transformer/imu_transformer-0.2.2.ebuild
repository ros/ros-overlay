# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Node/nodelet combination to transform sensor_msgs::Imu data from one frame into "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/imu_pipeline-release/archive/release/kinetic/imu_transformer/0.2.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/geometry_msgs
    ros-kinetic/message_filters
    ros-kinetic/nodelet
    ros-kinetic/roscpp
    ros-kinetic/roslaunch
    ros-kinetic/sensor_msgs
    ros-kinetic/tf
    ros-kinetic/tf2
    ros-kinetic/tf2_ros
    ros-kinetic/tf2_sensor_msgs
    ros-kinetic/topic_tools
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
