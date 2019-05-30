# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The object_analytics_node package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/dashing/${PN}/0.5.4-2.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/ament_index_python
	ros-dashing/class_loader
	ros-dashing/cv_bridge
	ros-dashing/geometry_msgs
	ros-dashing/message_filters
	ros-dashing/object_analytics_msgs
	ros-dashing/object_msgs
	ros-dashing/pcl_conversions
	ros-dashing/rclcpp
	ros-dashing/sensor_msgs
	ros-dashing/std_msgs
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	sci-libs/pcl
	sci-libs/pcl
	app-arch/lz4
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/rclcpp_components
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
