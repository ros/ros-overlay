# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="visp_camera_calibration allows easy calibration of\
	 cameras using a cu[...]"
HOMEPAGE="http://wiki.ros.org/visp_camera_calibration"
SRC_URI="https://github.com/lagadic/vision_visp-release/archive/release/noetic/${PN}/0.12.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/camera_calibration_parsers
	ros-noetic/geometry_msgs
	ros-noetic/message_generation
	ros-noetic/message_runtime
	ros-noetic/roscpp
	ros-noetic/rqt_console
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/visp
	ros-noetic/visp_bridge
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
