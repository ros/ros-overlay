# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Robot-independent Gazebo plugins used by PAL Robotics."
HOMEPAGE="https://github.com/pal-robotics/pal_gazebo_plugins"
SRC_URI="https://github.com/pal-gbp/${PN}-release/archive/release/humble/${PN}/4.0.3-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/control_toolbox
	ros-humble/gazebo_dev
	ros-humble/gazebo_msgs
	ros-humble/gazebo_ros
	ros-humble/nav_msgs
	ros-humble/rclcpp
	ros-humble/std_msgs
	ros-humble/tf2_geometry_msgs
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
