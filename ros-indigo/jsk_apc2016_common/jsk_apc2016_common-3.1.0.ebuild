# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The jsk_apc2016_common package"
HOMEPAGE="http://wiki.ros.org/jsk_apc2016_common"
SRC_URI="https://github.com/tork-a/jsk_apc-release/archive/release/indigo/jsk_apc2016_common/3.1.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/geometry_msgs
    ros-indigo/jsk_data
    ros-indigo/jsk_gui_msgs
    ros-indigo/jsk_recognition_msgs
    ros-indigo/message_filters
    ros-indigo/message_runtime
    ros-indigo/pcl_ros
    ros-indigo/qt_gui_py_common
    ros-indigo/resource_retriever
    ros-indigo/roscpp
    ros-indigo/rqt_gui
    ros-indigo/rqt_gui_py
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/tf2
    ros-indigo/tf2_eigen
    ros-indigo/tf2_ros
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/cmake_modules
    ros-indigo/message_generation
"

SLOT="indigo"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="/opt/ros/indigo"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D%/}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=${ROS_PREFIX}
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
