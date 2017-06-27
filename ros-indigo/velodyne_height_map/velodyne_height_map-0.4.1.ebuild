# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Obstacle detection for 3D point clouds using a height map algorithm."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/jack-oquin-ros-releases/velodyne_height_map-release/archive/release/indigo/velodyne_height_map/0.4.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/nodelet
    ros-indigo/pcl_ros
    ros-indigo/pluginlib
    ros-indigo/roscpp
    ros-indigo/sensor_msgs
    ros-indigo/tf
"
DEPEND="${RDEPEND}
    ros-indigo/angles
    ros-indigo/catkin
    ros-indigo/pcl_conversions
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
