# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The object_analytics_node package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/crystal/${PN}/0.5.2-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/ament_index_cpp
	ros-crystal/ament_index_python
	ros-crystal/class_loader
	ros-crystal/cv_bridge
	ros-crystal/geometry_msgs
	ros-crystal/message_filters
	ros-crystal/object_analytics_msgs
	ros-crystal/object_msgs
	ros-crystal/pcl_conversions
	ros-crystal/rclcpp
	ros-crystal/sensor_msgs
	ros-crystal/std_msgs
	test? ( ros-crystal/ament_cmake_gtest )
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
	sci-libs/pcl
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
