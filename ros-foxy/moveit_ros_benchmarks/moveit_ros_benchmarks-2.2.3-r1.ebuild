# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Enhanced tools for benchmarks in MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/foxy/${PN}/2.2.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/moveit_ros_planning
	ros-foxy/moveit_ros_warehouse
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/tf2_eigen
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	dev-libs/boost
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/moveit_common
	dev-libs/boost
	dev-libs/boost
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
