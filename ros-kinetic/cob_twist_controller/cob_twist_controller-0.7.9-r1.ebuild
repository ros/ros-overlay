# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The main purpose of the cob_twist_controller is to convert target twists in[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/kinetic/${PN}/0.7.9-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/cob_control_msgs
	ros-kinetic/cob_frame_tracker
	ros-kinetic/cob_srvs
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/eigen_conversions
	ros-kinetic/geometry_msgs
	ros-kinetic/kdl_conversions
	ros-kinetic/kdl_parser
	ros-kinetic/nav_msgs
	ros-kinetic/orocos_kdl
	ros-kinetic/pluginlib
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/rviz
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/tf_conversions
	ros-kinetic/topic_tools
	ros-kinetic/trajectory_msgs
	ros-kinetic/urdf
	ros-kinetic/visualization_msgs
	ros-kinetic/xacro
	dev-libs/boost[python]
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
