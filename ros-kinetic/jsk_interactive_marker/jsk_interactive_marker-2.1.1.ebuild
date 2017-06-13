# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="jsk interactive markers"
HOMEPAGE="http://ros.org/wiki/interactive_marker"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_interactive_marker/2.1.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/actionlib
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/dynamic_tf_publisher
    ros-kinetic/eigen_conversions
    ros-kinetic/geometry_msgs
    ros-kinetic/interactive_markers
    ros-kinetic/jsk_footstep_msgs
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/jsk_rviz_plugins
    ros-kinetic/jsk_topic_tools
    ros-kinetic/message_filters
    ros-kinetic/message_runtime
    ros-kinetic/moveit_msgs
    ros-kinetic/roscpp
    ros-kinetic/roseus
    ros-kinetic/roslib
    ros-kinetic/rviz
    ros-kinetic/sensor_msgs
    ros-kinetic/tf
    ros-kinetic/tf_conversions
    ros-kinetic/urdf
    ros-kinetic/visualization_msgs
    dev-libs/tinyxml
    dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/cmake_modules
    ros-kinetic/message_generation
    ros-kinetic/mk
    ros-kinetic/rosbuild
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
