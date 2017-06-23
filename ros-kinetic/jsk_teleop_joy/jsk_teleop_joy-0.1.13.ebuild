# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="jsk_teleop_joy"
HOMEPAGE="http://ros.org/wiki/jsk_teleop_joy"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_teleop_joy/0.1.13-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/diagnostic_msgs
    ros-kinetic/diagnostic_updater
    ros-kinetic/image_view2
    ros-kinetic/interactive_markers
    ros-kinetic/joy_mouse
    ros-kinetic/jsk_footstep_msgs
    ros-kinetic/jsk_interactive_marker
    ros-kinetic/jsk_rviz_plugins
    ros-kinetic/ps3joy
    ros-kinetic/tf
    ros-kinetic/view_controller_msgs
    ros-kinetic/visualization_msgs
    dev-python/pygame
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
