# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Demo Applications for CARL"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/carl_demos-release/archive/release/indigo/carl_demos/0.0.9-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/actionlib_msgs
    ros-indigo/carl_dynamixel
    ros-indigo/carl_moveit
    ros-indigo/carl_navigation
    ros-indigo/carl_safety
    ros-indigo/geometry_msgs
    ros-indigo/interactive_marker_proxy
    ros-indigo/message_runtime
    ros-indigo/rail_manipulation_msgs
    ros-indigo/rail_user_queue_manager
    ros-indigo/roscpp
    ros-indigo/tf2_web_republisher
    ros-indigo/web_video_server
    app-accessibility/espeak
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/message_generation
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
