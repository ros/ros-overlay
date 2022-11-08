# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Turtlebot4 Robot Bringup"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/galactic/${PN}/0.1.3-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/depthai_bridge
	ros-galactic/depthai_examples
	ros-galactic/depthai_ros_msgs
	ros-galactic/joy_linux
	ros-galactic/rplidar_ros
	ros-galactic/teleop_twist_joy
	ros-galactic/tf2_ros
	ros-galactic/turtlebot4_description
	ros-galactic/turtlebot4_diagnostics
	ros-galactic/turtlebot4_node
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
