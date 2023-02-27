# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Fiducial detection based on the aruco library"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/noetic/${PN}/0.12.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/compressed_depth_image_transport
	ros-noetic/compressed_image_transport
	ros-noetic/cv_bridge
	ros-noetic/dynamic_reconfigure
	ros-noetic/fiducial_msgs
	ros-noetic/image_transport
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/tf2
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	ros-noetic/theora_image_transport
	ros-noetic/vision_msgs
	ros-noetic/visualization_msgs
	media-gfx/cairosvg
	dev-python/joblib
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
