# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The fetch_pbd_interaction package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fetchrobotics/fetch_pbd-release/archive/release/indigo/fetch_pbd_interaction/0.0.7-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/fetch_arm_control
    ros-indigo/geometry_msgs
    ros-indigo/interactive_marker_proxy
    ros-indigo/interactive_markers
    ros-indigo/message_runtime
    ros-indigo/moveit_commander
    ros-indigo/rail_manipulation_msgs
    ros-indigo/rail_segmentation
    ros-indigo/rosbridge_server
    ros-indigo/rospy
    ros-indigo/rospy_message_converter
    ros-indigo/std_msgs
    ros-indigo/tf
    ros-indigo/tf2_web_republisher
    dev-db/couchdb
    dev-python/couchdb-python
"
DEPEND="${RDEPEND}
    ros-indigo/actionlib
    ros-indigo/catkin
    ros-indigo/message_generation
    ros-indigo/roscpp
    dev-vcs/git
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
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
