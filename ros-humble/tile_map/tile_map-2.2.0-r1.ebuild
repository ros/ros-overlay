# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Tile map provides a slippy map style interface for visualizing \
	 OpenS[...]"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/ros2-gbp/mapviz-release/archive/release/humble/${PN}/2.2.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/mapviz
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/swri_math_util
	ros-humble/swri_transform_util
	ros-humble/tf2
	media-libs/glew
	dev-libs/jsoncpp
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	dev-libs/jsoncpp
	dev-qt/qtopengl:5
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
