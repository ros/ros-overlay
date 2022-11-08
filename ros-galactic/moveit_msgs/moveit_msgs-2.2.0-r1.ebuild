# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Messages, services and actions used by MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/${PN}-release/archive/release/galactic/${PN}/2.2.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/action_msgs
	ros-galactic/geometry_msgs
	ros-galactic/object_recognition_msgs
	ros-galactic/octomap_msgs
	ros-galactic/rosidl_default_runtime
	ros-galactic/sensor_msgs
	ros-galactic/shape_msgs
	ros-galactic/std_msgs
	ros-galactic/trajectory_msgs
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_cmake )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
