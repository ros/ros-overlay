# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Tile map provides a slippy map style interface for visualizing \
	 OpenS[...]"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/dashing/${PN}/2.0.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/mapviz
	ros-dashing/pluginlib
	ros-dashing/rclcpp
	ros-dashing/swri_math_util
	ros-dashing/swri_transform_util
	ros-dashing/tf2
	media-libs/glew
	dev-libs/jsoncpp
	dev-qt/qtcore:5
	dev-qt/qtopengl:5
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	dev-libs/jsoncpp
	dev-qt/qtopengl:5
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
