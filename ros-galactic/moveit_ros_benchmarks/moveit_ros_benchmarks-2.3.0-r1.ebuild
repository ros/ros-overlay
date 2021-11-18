# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Enhanced tools for benchmarks in MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/galactic/${PN}/2.3.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/moveit_ros_planning
	ros-galactic/moveit_ros_warehouse
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/tf2_eigen
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	dev-libs/boost
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/moveit_common
	dev-libs/boost
	dev-libs/boost
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
