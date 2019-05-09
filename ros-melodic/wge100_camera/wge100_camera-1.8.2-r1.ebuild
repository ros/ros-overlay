# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS node and assorted tools to provide access to the WGE100\
	camera u[...]"
HOMEPAGE="http://www.ros.org/wiki/wge100_camera"
SRC_URI="https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/melodic/${PN}/1.8.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/camera_calibration_parsers
	ros-melodic/diagnostic_updater
	ros-melodic/driver_base
	ros-melodic/dynamic_reconfigure
	ros-melodic/image_transport
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/self_test
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/timestamp_tools
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
