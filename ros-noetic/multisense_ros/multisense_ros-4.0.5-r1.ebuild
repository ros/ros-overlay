# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="multisense_ros"
HOMEPAGE="https://github.com/carnegierobotics/multisense_ros"
SRC_URI="https://github.com/carnegieroboticsllc/${PN}-release/archive/release/noetic/${PN}/4.0.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/angles
	ros-noetic/cv_bridge
	ros-noetic/dynamic_reconfigure
	ros-noetic/genmsg
	ros-noetic/geometry_msgs
	ros-noetic/image_geometry
	ros-noetic/image_transport
	ros-noetic/message_generation
	ros-noetic/message_runtime
	ros-noetic/multisense_lib
	ros-noetic/rosbag
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/stereo_msgs
	ros-noetic/tf
	media-libs/libjpeg-turbo
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-cpp/yaml-cpp
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
