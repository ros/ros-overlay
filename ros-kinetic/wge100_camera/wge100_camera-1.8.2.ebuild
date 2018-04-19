# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A ROS node and assorted tools to provide access to the WGE100\
	camera u[...]"
HOMEPAGE="http://www.ros.org/wiki/wge100_camera"
SRC_URI="https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/kinetic/${PN}/1.8.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/camera_calibration_parsers
	ros-kinetic/diagnostic_updater
	ros-kinetic/driver_base
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/image_transport
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/self_test
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/timestamp_tools
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
