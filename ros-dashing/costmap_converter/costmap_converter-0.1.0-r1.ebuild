# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A ros package that includes plugins and nodes to convert occupied costmap2d[...]"
HOMEPAGE="http://wiki.ros.org/costmap_converter"
SRC_URI="https://github.com/rst-tu-dortmund/${PN}-ros2-release/archive/release/dashing/${PN}/0.1.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/class_loader
	ros-dashing/costmap_converter_msgs
	ros-dashing/cv_bridge
	ros-dashing/geometry_msgs
	ros-dashing/nav2_costmap_2d
	ros-dashing/pluginlib
	ros-dashing/rclcpp
	ros-dashing/tf2
	test? ( ros-dashing/ament_cmake_gtest )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
