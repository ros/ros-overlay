# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package to programmatically spawn message, service, and action relays To add su"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/kinetic/message_relay/0.0.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib_msgs
	ros-kinetic/controller_manager_msgs
	ros-kinetic/diagnostic_msgs
	ros-kinetic/gazebo_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/map_msgs
	ros-kinetic/move_base_msgs
	ros-kinetic/multimaster_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/robot_localization
	ros-kinetic/roscpp
	ros-kinetic/rosgraph_msgs
	ros-kinetic/sensor_msgs
	ros-kinetic/shape_msgs
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/stereo_msgs
	ros-kinetic/tf2_msgs
	ros-kinetic/trajectory_msgs
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-python/cheetah
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

