# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The main purpose of the cob_twist_controller is to convert target twists in[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/melodic/${PN}/0.8.11-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/cob_control_msgs
	ros-melodic/cob_frame_tracker
	ros-melodic/cob_script_server
	ros-melodic/cob_srvs
	ros-melodic/dynamic_reconfigure
	ros-melodic/eigen_conversions
	ros-melodic/geometry_msgs
	ros-melodic/kdl_conversions
	ros-melodic/kdl_parser
	ros-melodic/nav_msgs
	ros-melodic/orocos_kdl
	ros-melodic/pluginlib
	ros-melodic/robot_state_publisher
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/rviz
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/tf_conversions
	ros-melodic/topic_tools
	ros-melodic/trajectory_msgs
	ros-melodic/urdf
	ros-melodic/visualization_msgs
	ros-melodic/xacro
	dev-libs/boost[python]
	dev-cpp/eigen
	dev-python/matplotlib
	dev-python/six
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
