# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A package containing RViz2 plugins for RMF"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_visualization-release/archive/release/humble/${PN}/2.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/resource_retriever
	ros-humble/rmf_door_msgs
	ros-humble/rmf_lift_msgs
	ros-humble/rmf_traffic_ros2
	ros-humble/rmf_visualization_msgs
	ros-humble/rviz_common
	ros-humble/rviz_default_plugins
	ros-humble/rviz_rendering
	test? ( ros-humble/ament_cmake_uncrustify )
	test? ( ros-humble/rmf_utils )
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	dev-cpp/eigen
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
