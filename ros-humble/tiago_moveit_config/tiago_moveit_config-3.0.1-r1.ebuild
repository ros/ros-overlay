# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="http://moveit.ros.org/"
SRC_URI="https://github.com/pal-gbp/${PN}-release/archive/release/humble/${PN}/3.0.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/launch_pal
	ros-humble/moveit_configs_utils
	ros-humble/moveit_kinematics
	ros-humble/moveit_planners_ompl
	ros-humble/moveit_ros_control_interface
	ros-humble/moveit_ros_move_group
	ros-humble/moveit_ros_visualization
	ros-humble/tiago_description
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
