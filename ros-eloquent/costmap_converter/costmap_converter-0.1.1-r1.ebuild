# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A ros package that includes plugins and nodes to convert occupied costmap2d[...]"
HOMEPAGE="http://wiki.ros.org/costmap_converter"
SRC_URI="https://github.com/rst-tu-dortmund/${PN}-ros2-release/archive/release/eloquent/${PN}/0.1.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/class_loader
	ros-eloquent/costmap_converter_msgs
	ros-eloquent/cv_bridge
	ros-eloquent/geometry_msgs
	ros-eloquent/nav2_costmap_2d
	ros-eloquent/pluginlib
	ros-eloquent/rclcpp
	ros-eloquent/tf2
	test? ( ros-eloquent/ament_cmake_gtest )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
