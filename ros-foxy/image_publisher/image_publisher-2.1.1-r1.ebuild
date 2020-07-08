# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="<p>\
	  Contains a node publish an image stream from single image file\
[...]"
HOMEPAGE="http://ros.org/wiki/image_publisher"
SRC_URI="https://github.com/ros2-gbp/image_pipeline-release/archive/release/foxy/${PN}/2.1.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/camera_info_manager
	ros-foxy/class_loader
	ros-foxy/cv_bridge
	ros-foxy/image_geometry
	ros-foxy/image_transport
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
