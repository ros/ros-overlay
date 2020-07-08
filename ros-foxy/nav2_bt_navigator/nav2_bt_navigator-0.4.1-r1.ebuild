# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="TODO"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/${PN}/0.4.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/behaviortree_cpp_v3
	ros-foxy/geometry_msgs
	ros-foxy/nav2_behavior_tree
	ros-foxy/nav2_msgs
	ros-foxy/nav2_util
	ros-foxy/nav_msgs
	ros-foxy/rclcpp
	ros-foxy/rclcpp_action
	ros-foxy/rclcpp_lifecycle
	ros-foxy/std_msgs
	ros-foxy/tf2_ros
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/nav2_common
	ros-foxy/std_srvs
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
