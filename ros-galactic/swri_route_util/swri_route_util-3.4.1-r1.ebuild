# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This library provides functionality to simplify working with the\
	navig[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/galactic/${PN}/3.4.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/marti_common_msgs
	ros-galactic/marti_nav_msgs
	ros-galactic/rclcpp
	ros-galactic/swri_geometry_util
	ros-galactic/swri_math_util
	ros-galactic/swri_roscpp
	ros-galactic/swri_transform_util
	ros-galactic/tf2_geometry_msgs
	ros-galactic/visualization_msgs
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
