# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="visp_camera_calibration allows easy calibration of\
	 cameras using a cu[...]"
HOMEPAGE="http://wiki.ros.org/visp_camera_calibration"
SRC_URI="https://github.com/lagadic/vision_visp-release/archive/release/kinetic/${PN}/0.11.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/camera_calibration_parsers
	ros-kinetic/geometry_msgs
	ros-kinetic/message_generation
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/visp
	ros-kinetic/visp_bridge
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
