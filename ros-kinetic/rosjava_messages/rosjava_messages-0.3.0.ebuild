# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Message generation for rosjava."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosjava-release/rosjava_messages-release/archive/release/kinetic/rosjava_messages/0.3.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/genjava
    ros-kinetic/rosjava_build_tools
"
DEPEND="${RDEPEND}
    ros-kinetic/actionlib_msgs
    ros-kinetic/ar_track_alvar_msgs
    ros-kinetic/catkin
    ros-kinetic/concert_msgs
    ros-kinetic/concert_service_msgs
    ros-kinetic/diagnostic_msgs
    ros-kinetic/gateway_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/move_base_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/rocon_app_manager_msgs
    ros-kinetic/rocon_device_msgs
    ros-kinetic/rocon_interaction_msgs
    ros-kinetic/rocon_service_pair_msgs
    ros-kinetic/rocon_std_msgs
    ros-kinetic/rocon_tutorial_msgs
    ros-kinetic/roscpp
    ros-kinetic/rosgraph_msgs
    ros-kinetic/rosjava_test_msgs
    ros-kinetic/scheduler_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/shape_msgs
    ros-kinetic/std_msgs
    ros-kinetic/std_srvs
    ros-kinetic/stereo_msgs
    ros-kinetic/tf2_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/uuid_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/world_canvas_msgs
    ros-kinetic/yocs_msgs
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
