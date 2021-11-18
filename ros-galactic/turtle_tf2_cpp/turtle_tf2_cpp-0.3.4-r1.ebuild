# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="turtle_tf2_cpp demonstrates how to write a ROS2 C++ tf2 broadcaster and lis[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/geometry_tutorials-release/archive/release/galactic/${PN}/0.3.4-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/geometry_msgs
	ros-galactic/launch
	ros-galactic/launch_ros
	ros-galactic/message_filters
	ros-galactic/rclcpp
	ros-galactic/tf2
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_ros
	ros-galactic/turtlesim
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
