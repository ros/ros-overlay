# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Components of MoveIt that offer interaction via interactive markers"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/galactic/${PN}/2.3.4-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/interactive_markers
	ros-galactic/moveit_ros_planning
	ros-galactic/rclcpp
	ros-galactic/tf2
	ros-galactic/tf2_eigen
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_ros
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/moveit_common
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
