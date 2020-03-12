# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This library provides functionality to simplify working with the\
	navig[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/eloquent/${PN}/3.0.5-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/marti_common_msgs
	ros-eloquent/marti_nav_msgs
	ros-eloquent/rclcpp
	ros-eloquent/swri_geometry_util
	ros-eloquent/swri_math_util
	ros-eloquent/swri_roscpp
	ros-eloquent/swri_transform_util
	ros-eloquent/visualization_msgs
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
