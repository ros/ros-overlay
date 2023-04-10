# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A package containing RViz2 plugins for RMF"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_visualization-release/archive/release/foxy/${PN}/1.2.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/resource_retriever
	ros-foxy/rmf_door_msgs
	ros-foxy/rmf_lift_msgs
	ros-foxy/rmf_traffic_ros2
	ros-foxy/rmf_visualization_msgs
	ros-foxy/rviz_common
	ros-foxy/rviz_default_plugins
	ros-foxy/rviz_rendering
	test? ( ros-foxy/rmf_cmake_uncrustify )
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	dev-cpp/eigen
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
