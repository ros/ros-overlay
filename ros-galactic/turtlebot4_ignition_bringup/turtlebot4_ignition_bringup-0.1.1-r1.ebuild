# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="TurtleBot 4 Ignition Simulator bringup"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/galactic/${PN}/0.1.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/geometry_msgs
	ros-galactic/irobot_create_common_bringup
	ros-galactic/irobot_create_description
	ros-galactic/irobot_create_ignition_bringup
	ros-galactic/irobot_create_ignition_toolbox
	ros-galactic/irobot_create_msgs
	ros-galactic/irobot_create_nodes
	ros-galactic/irobot_create_toolbox
	ros-galactic/ros_ign_bridge
	ros-galactic/ros_ign_gazebo
	ros-galactic/ros_ign_interfaces
	ros-galactic/std_msgs
	ros-galactic/turtlebot4_description
	ros-galactic/turtlebot4_ignition_gui_plugins
	ros-galactic/turtlebot4_ignition_toolbox
	ros-galactic/turtlebot4_msgs
	ros-galactic/turtlebot4_navigation
	ros-galactic/turtlebot4_node
	ros-galactic/turtlebot4_viz
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
