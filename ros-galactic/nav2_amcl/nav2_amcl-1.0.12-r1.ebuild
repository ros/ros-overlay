# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="<p>\
	  amcl is a probabilistic localization system for a robot moving i[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/${PN}/1.0.12-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="LGPL-2.1-or-later"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/geometry_msgs
	ros-galactic/launch_ros
	ros-galactic/launch_testing
	ros-galactic/message_filters
	ros-galactic/nav2_msgs
	ros-galactic/nav2_util
	ros-galactic/nav_msgs
	ros-galactic/rclcpp
	ros-galactic/sensor_msgs
	ros-galactic/std_srvs
	ros-galactic/tf2
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_ros
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/nav2_common
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
