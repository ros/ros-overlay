# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Graphical interface, written in PySide, to manage the running and 
     configur"
HOMEPAGE="http://ros.org/wiki/node_manager_fkie"
SRC_URI="https://github.com/fkie-release/multimaster_fkie-release/archive/release/indigo/node_manager_fkie/0.7.4-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( BSD CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/default_cfg_fkie
    ros-indigo/diagnostic_msgs
    ros-indigo/dynamic_reconfigure
    ros-indigo/master_discovery_fkie
    ros-indigo/master_sync_fkie
    ros-indigo/multimaster_msgs_fkie
    ros-indigo/python_qt_binding
    ros-indigo/rosgraph
    ros-indigo/roslaunch
    ros-indigo/roslib
    ros-indigo/rosmsg
    ros-indigo/rospy
    ros-indigo/rosservice
    ros-indigo/rqt_gui
    ros-indigo/rqt_reconfigure
    dev-python/docutils
    dev-python/paramiko
    app-misc/screen
    x11-terms/xterm
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
