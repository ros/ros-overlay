# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A ROS node and assorted tools to provide access to the WGE100\
	camera u[...]"
HOMEPAGE="http://www.ros.org/wiki/wge100_camera"
SRC_URI="https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/noetic/${PN}/1.8.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/camera_calibration_parsers
	ros-noetic/diagnostic_updater
	ros-noetic/driver_base
	ros-noetic/dynamic_reconfigure
	ros-noetic/image_transport
	ros-noetic/message_runtime
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/self_test
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/timestamp_tools
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
