# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Set of drivers to talk to the kobuki base."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/turtlebot2_demo-release/archive/release/ardent/${PN}/0.4.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/geometry_msgs
	ros-ardent/nav_msgs
	ros-ardent/rclcpp
	ros-ardent/sensor_msgs
	ros-ardent/tf2
	ros-ardent/tf2_ros
	test? ( ros-ardent/ament_lint_auto )
	test? ( ros-ardent/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
