# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Interaction management for human interactive agents in the concert."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_interactions/0.3.2-1.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/genpy
    ros-kinetic/rocon_app_manager_msgs
    ros-kinetic/rocon_bubble_icons
    ros-kinetic/rocon_console
    ros-kinetic/rocon_icons
    ros-kinetic/rocon_interaction_msgs
    ros-kinetic/rocon_python_comms
    ros-kinetic/rocon_python_utils
    ros-kinetic/rocon_std_msgs
    ros-kinetic/rocon_uri
    ros-kinetic/rospy
    ros-kinetic/std_msgs
    ros-kinetic/unique_id
    dev-python/rospkg
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/roslint
    ros-kinetic/rostest
    dev-python/catkin_pkg
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
