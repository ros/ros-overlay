# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A ROS node and assorted tools to provide access to the WGE100	camera used in"
HOMEPAGE="http://www.ros.org/wiki/wge100_camera"
SRC_URI="https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/indigo/wge100_camera/1.8.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_calibration_parsers
	ros-indigo/diagnostic_updater
	ros-indigo/driver_base
	ros-indigo/dynamic_reconfigure
	ros-indigo/image_transport
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/self_test
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/timestamp_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

