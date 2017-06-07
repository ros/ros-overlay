# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Follower for the turtlebot. Follows humans and robots around by following the ce"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_follower/2.3.7-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/depth_image_proc
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/nodelet
    ros-kinetic/roscpp
    ros-kinetic/topic_tools
    ros-kinetic/turtlebot_bringup
    ros-kinetic/turtlebot_msgs
    ros-kinetic/turtlebot_teleop
    ros-kinetic/visualization_msgs
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
        -DPYTHON_INSTALL_DIR=lib64/site-packages/python3.5        -DPYTHON_EXECUTABLE=/usr/bin/ros-python
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
