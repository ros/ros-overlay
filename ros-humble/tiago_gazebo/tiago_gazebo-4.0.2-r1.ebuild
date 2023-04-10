# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="The tiago_gazebo package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/tiago_simulation-release/archive/release/humble/${PN}/4.0.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/gazebo_plugins
	ros-humble/gazebo_ros
	ros-humble/gazebo_ros2_control
	ros-humble/launch
	ros-humble/launch_pal
	ros-humble/launch_ros
	ros-humble/pal_gazebo_plugins
	ros-humble/pal_gazebo_worlds
	ros-humble/play_motion2_msgs
	ros-humble/tiago_2dnav
	ros-humble/tiago_bringup
	ros-humble/tiago_description
	ros-humble/tiago_moveit_config
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/launch_testing_ament_cmake )
	test? ( ros-humble/play_motion2_msgs )
	test? ( ros-humble/rclcpp )
	test? ( ros-humble/sensor_msgs )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
