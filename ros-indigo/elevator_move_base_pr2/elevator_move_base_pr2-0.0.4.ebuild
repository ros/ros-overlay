# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="elevator_move_base_pr2"
HOMEPAGE="http://ros.org/wiki/elevator_move_base_pr2"
SRC_URI="https://github.com/tork-a/jsk_demos-release/archive/release/indigo/elevator_move_base_pr2/0.0.4-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/message_runtime
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/cv_bridge
    ros-indigo/image_geometry
    ros-indigo/image_transport
    ros-indigo/jsk_maps
    ros-indigo/jsk_perception
    ros-indigo/message_generation
    ros-indigo/move_base_msgs
    ros-indigo/nav_msgs
    ros-indigo/pr2eus
    ros-indigo/roscpp
    ros-indigo/roseus
    ros-indigo/roseus_smach
    ros-indigo/rospy
    ros-indigo/sound_play
    ros-indigo/std_msgs
    ros-indigo/std_srvs
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
