# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Gazebo Plugins for various PR2-specific sensors and actuators on the robot."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pr2-gbp/pr2_simulator-release/archive/release/indigo/pr2_gazebo_plugins/2.0.7-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/angles
    ros-indigo/cv_bridge
    ros-indigo/diagnostic_msgs
    ros-indigo/diagnostic_updater
    ros-indigo/driver_base
    ros-indigo/gazebo_msgs
    ros-indigo/gazebo_plugins
    ros-indigo/gazebo_ros
    ros-indigo/geometry_msgs
    ros-indigo/image_transport
    ros-indigo/message_generation
    ros-indigo/message_runtime
    ros-indigo/nav_msgs
    ros-indigo/orocos_kdl
    ros-indigo/polled_camera
    ros-indigo/pr2_controller_manager
    ros-indigo/pr2_hardware_interface
    ros-indigo/pr2_mechanism_model
    ros-indigo/pr2_msgs
    ros-indigo/roscpp
    ros-indigo/rospy
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/tf
    ros-indigo/urdf
    sci-electronics/gazebo
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
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
