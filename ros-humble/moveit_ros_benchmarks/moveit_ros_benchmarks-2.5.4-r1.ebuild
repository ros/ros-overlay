# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Enhanced tools for benchmarks in MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/humble/${PN}/2.5.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/launch_param_builder
	ros-humble/moveit_common
	ros-humble/moveit_configs_utils
	ros-humble/moveit_ros_planning
	ros-humble/moveit_ros_warehouse
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/tf2_eigen
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	dev-libs/boost
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/moveit_core
	dev-libs/boost
	dev-libs/boost
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
