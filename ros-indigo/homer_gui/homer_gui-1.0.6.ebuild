# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.uni-koblenz.de/robbie/homer_gui/repository/archive.tar.gz?ref=release/indigo/homer_gui/1.0.6-0 -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/geometry_msgs
    ros-indigo/homer_mapnav_msgs
    ros-indigo/homer_nav_libs
    ros-indigo/message_runtime
    ros-indigo/or_libs
    ros-indigo/or_msgs
    ros-indigo/or_nodes
    ros-indigo/robbie_architecture
    ros-indigo/roscpp
    ros-indigo/roslib
    ros-indigo/rviz
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/tf
    dev-libs/boost
    dev-cpp/eigen
    media-libs/opencv
    sci-libs/pcl
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/cv_bridge
    ros-indigo/genmsg
    ros-indigo/message_generation
    dev-qt/qtcore:4
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
