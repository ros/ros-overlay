# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Navigation 2 plugins for rviz"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/${PN}/0.2.6-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/geometry_msgs
	ros-dashing/nav2_lifecycle_manager
	ros-dashing/nav2_msgs
	ros-dashing/nav2_util
	ros-dashing/nav_msgs
	ros-dashing/pluginlib
	ros-dashing/rclcpp
	ros-dashing/rclcpp_lifecycle
	ros-dashing/resource_retriever
	ros-dashing/rviz_common
	ros-dashing/rviz_default_plugins
	ros-dashing/rviz_ogre_vendor
	ros-dashing/rviz_rendering
	ros-dashing/std_msgs
	ros-dashing/tf2_geometry_msgs
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
