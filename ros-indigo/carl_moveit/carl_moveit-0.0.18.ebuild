# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="MoveIt! Configuration and ROS Interface for CARL"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/carl_moveit-release/archive/release/indigo/carl_moveit/0.0.18-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/actionlib
    ros-indigo/actionlib_msgs
    ros-indigo/carl_description
    ros-indigo/control_msgs
    ros-indigo/geometry_msgs
    ros-indigo/joint_state_publisher
    ros-indigo/message_runtime
    ros-indigo/moveit_planners_ompl
    ros-indigo/moveit_ros_move_group
    ros-indigo/moveit_ros_planning_interface
    ros-indigo/pcl_conversions
    ros-indigo/pcl_ros
    ros-indigo/rail_manipulation_msgs
    ros-indigo/robot_state_publisher
    ros-indigo/roscpp
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/std_srvs
    ros-indigo/wpi_jaco_msgs
    ros-indigo/xacro
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/cmake_modules
    ros-indigo/message_generation
    ros-indigo/tf
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
