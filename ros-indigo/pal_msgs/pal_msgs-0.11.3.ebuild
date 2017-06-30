# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="PAL-specific messages and services"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/pal_msgs-release/archive/release/indigo/pal_msgs/0.11.3-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/pal_behaviour_msgs
    ros-indigo/pal_control_msgs
    ros-indigo/pal_detection_msgs
    ros-indigo/pal_device_msgs
    ros-indigo/pal_interaction_msgs
    ros-indigo/pal_motion_model_msgs
    ros-indigo/pal_multirobot_msgs
    ros-indigo/pal_navigation_msgs
    ros-indigo/pal_tablet_msgs
    ros-indigo/pal_vision_msgs
    ros-indigo/pal_walking_msgs
    ros-indigo/pal_wifi_localization_msgs
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
