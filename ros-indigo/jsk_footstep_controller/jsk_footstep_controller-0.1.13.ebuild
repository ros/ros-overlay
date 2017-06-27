# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="The jsk_footstep_controller package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/indigo/jsk_footstep_controller/0.1.13-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/diagnostic_msgs
    ros-indigo/diagnostic_updater
    ros-indigo/dynamic_reconfigure
    ros-indigo/genmsg
    ros-indigo/geometry_msgs
    ros-indigo/jsk_footstep_msgs
    ros-indigo/jsk_footstep_planner
    ros-indigo/jsk_pcl_ros
    ros-indigo/jsk_topic_tools
    ros-indigo/kdl_conversions
    ros-indigo/kdl_parser
    ros-indigo/message_filters
    ros-indigo/message_generation
    ros-indigo/sensor_msgs
    ros-indigo/sound_play
    ros-indigo/std_msgs
    ros-indigo/tf
    ros-indigo/tf2
    ros-indigo/tf_conversions
    ros-indigo/urdf
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
