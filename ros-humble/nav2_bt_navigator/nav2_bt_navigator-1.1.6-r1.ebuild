# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="TODO"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/humble/${PN}/1.1.6-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/behaviortree_cpp_v3
	ros-humble/geometry_msgs
	ros-humble/nav2_behavior_tree
	ros-humble/nav2_core
	ros-humble/nav2_msgs
	ros-humble/nav2_util
	ros-humble/nav_msgs
	ros-humble/rclcpp
	ros-humble/rclcpp_action
	ros-humble/rclcpp_lifecycle
	ros-humble/std_msgs
	ros-humble/tf2_ros
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/nav2_common
	ros-humble/std_srvs
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
