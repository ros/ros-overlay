# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="TODO"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/eloquent/${PN}/0.3.2-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/behaviortree_cpp_v3
	ros-eloquent/geometry_msgs
	ros-eloquent/nav2_behavior_tree
	ros-eloquent/nav2_msgs
	ros-eloquent/nav2_util
	ros-eloquent/nav_msgs
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_action
	ros-eloquent/rclcpp_lifecycle
	ros-eloquent/std_msgs
	ros-eloquent/tf2_ros
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/nav2_common
	ros-eloquent/std_srvs
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
