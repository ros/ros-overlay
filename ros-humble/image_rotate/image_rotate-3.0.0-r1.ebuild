# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="<p>\
	  Contains a node that rotates an image stream in a way that minim[...]"
HOMEPAGE="https://index.ros.org/p/image_rotate/github-ros-perception-image_pipeline/"
SRC_URI="https://github.com/ros2-gbp/image_pipeline-release/archive/release/humble/${PN}/3.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/cv_bridge
	ros-humble/geometry_msgs
	ros-humble/image_transport
	ros-humble/rcl_interfaces
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/sensor_msgs
	ros-humble/tf2
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_auto
	ros-humble/class_loader
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
