# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="A GUI plugin for calibrating the Shadow EtherCAT Hand."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-visualization-release/archive/release/indigo/sr_gui_hand_calibration/1.3.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/rospy
    ros-indigo/rqt_gui
    ros-indigo/rqt_gui_py
    ros-indigo/sr_robot_lib
    ros-indigo/sr_robot_msgs
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
