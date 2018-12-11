# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="<p>\
	  amcl is a probabilistic localization system for a robot moving i[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/${PN}/0.1.3-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/geometry_msgs
	ros-crystal/launch_ros
	ros-crystal/launch_testing
	ros-crystal/message_filters
	ros-crystal/nav2_dynamic_params
	ros-crystal/nav2_tasks
	ros-crystal/nav2_util
	ros-crystal/nav_msgs
	ros-crystal/rclcpp
	ros-crystal/sensor_msgs
	ros-crystal/std_srvs
	ros-crystal/tf2
	ros-crystal/tf2_geometry_msgs
	ros-crystal/tf2_ros
	test? ( ros-crystal/ament_cmake_gtest )
	test? ( ros-crystal/ament_cmake_pytest )
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
	test? ( ros-crystal/launch )
	test? ( ros-crystal/launch_testing )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
