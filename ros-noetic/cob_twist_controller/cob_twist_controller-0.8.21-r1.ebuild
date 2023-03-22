# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The main purpose of the cob_twist_controller is to convert target twists in[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/noetic/${PN}/0.8.21-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cmake_modules
	ros-noetic/cob_control_msgs
	ros-noetic/cob_frame_tracker
	ros-noetic/cob_script_server
	ros-noetic/cob_srvs
	ros-noetic/control_msgs
	ros-noetic/dynamic_reconfigure
	ros-noetic/eigen_conversions
	ros-noetic/geometry_msgs
	ros-noetic/kdl_conversions
	ros-noetic/kdl_parser
	ros-noetic/nav_msgs
	ros-noetic/pluginlib
	ros-noetic/robot_state_publisher
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/rviz
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/tf_conversions
	ros-noetic/topic_tools
	ros-noetic/trajectory_msgs
	ros-noetic/urdf
	ros-noetic/visualization_msgs
	ros-noetic/xacro
	dev-libs/boost[python]
	dev-cpp/eigen
	sci-libs/orocos_kdl
	sci-libs/orocos_kdl
	dev-python/matplotlib
	dev-python/six
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslint
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
