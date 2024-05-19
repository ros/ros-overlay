# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS package of IRIS Localization and Mapping \(LaMa\)."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/eupedrosa/${PN}-release/archive/release/noetic/${PN}/1.3.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/iris_lama
	ros-noetic/message_filters
	ros-noetic/nav_msgs
	ros-noetic/rosbag
	ros-noetic/rosbag_storage
	ros-noetic/roscpp
	ros-noetic/std_srvs
	ros-noetic/tf
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf_conversions
	ros-noetic/visualization_msgs
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
