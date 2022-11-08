# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="TODO"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/${PN}/1.0.12-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/behaviortree_cpp_v3
	ros-galactic/builtin_interfaces
	ros-galactic/geometry_msgs
	ros-galactic/lifecycle_msgs
	ros-galactic/nav2_msgs
	ros-galactic/nav2_util
	ros-galactic/nav_msgs
	ros-galactic/rclcpp
	ros-galactic/rclcpp_action
	ros-galactic/rclcpp_lifecycle
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	ros-galactic/tf2
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_ros
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/test_msgs )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/nav2_common
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
