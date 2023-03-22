# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Messages, services and actions used by MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.2.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/action_msgs
	ros-humble/geometry_msgs
	ros-humble/object_recognition_msgs
	ros-humble/octomap_msgs
	ros-humble/rosidl_default_runtime
	ros-humble/sensor_msgs
	ros-humble/shape_msgs
	ros-humble/std_msgs
	ros-humble/trajectory_msgs
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_cmake )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
