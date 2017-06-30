# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/pr2_gazebo"
SRC_URI="https://github.com/pr2-gbp/pr2_simulator-release/archive/release/indigo/pr2_gazebo/2.0.7-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-indigo/diagnostic_aggregator
    ros-indigo/fingertip_pressure
    ros-indigo/gazebo_plugins
    ros-indigo/geometry_msgs
    ros-indigo/image_proc
    ros-indigo/joint_trajectory_action
    ros-indigo/pr2_controller_configuration_gazebo
    ros-indigo/pr2_dashboard_aggregator
    ros-indigo/pr2_description
    ros-indigo/pr2_gazebo_plugins
    ros-indigo/pr2_gripper_action
    ros-indigo/pr2_head_action
    ros-indigo/pr2_mechanism_controllers
    ros-indigo/pr2_msgs
    ros-indigo/robot_mechanism_controllers
    ros-indigo/robot_pose_ekf
    ros-indigo/rospy
    ros-indigo/single_joint_position_action
    ros-indigo/std_msgs
    ros-indigo/stereo_image_proc
    ros-indigo/tf2_ros
    ros-indigo/topic_tools
    ros-indigo/xacro
    sci-electronics/gazebo
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
