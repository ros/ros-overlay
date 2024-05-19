# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Fiducial recognition. Implementation of different 2D tags like PI-tag from [...]"
HOMEPAGE="http://ros.org/wiki/cob_fiducials"
SRC_URI="https://github.com/4am-robotics/${PN}-release/archive/release/noetic/${PN}/0.1.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cmake_modules
	ros-noetic/cob_object_detection_msgs
	ros-noetic/cob_vision_utils
	ros-noetic/cv_bridge
	ros-noetic/diagnostic_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/image_transport
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf
	ros-noetic/visualization_msgs
	dev-libs/boost[python]
	media-libs/opencv
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
