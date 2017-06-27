# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="slider_gui"
HOMEPAGE="http://ros.org/wiki/slider_gui"
SRC_URI="https://github.com/pr2-gbp/pr2_hack_the_future-release/archive/release/indigo/slider_gui/1.1.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/face_detector
    ros-indigo/korg_nanokontrol
    ros-indigo/pr2_controllers_msgs
    ros-indigo/pr2_mechanism_msgs
    ros-indigo/program_queue
    ros-indigo/rospy
    ros-indigo/rviz_backdrop
    ros-indigo/sensor_msgs
    ros-indigo/sound_play
    ros-indigo/std_srvs
    ros-indigo/trajectory_msgs
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
