# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS driver for the Leap Motion gesture sensor"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/leap_motion-release/archive/release/indigo/leap_motion/0.0.11-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_calibration_parsers
	ros-indigo/camera_info_manager
	ros-indigo/geometry_msgs
	ros-indigo/image_transport
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/rospack
	ros-indigo/rospy
	ros-indigo/std_msgs
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
