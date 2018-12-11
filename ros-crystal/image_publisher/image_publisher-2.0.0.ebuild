# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="<p>\
	  Contains a node publish an image stream from single image file\
[...]"
HOMEPAGE="http://ros.org/wiki/image_publisher"
SRC_URI="https://github.com/ros2-gbp/image_pipeline-release/archive/release/crystal/${PN}/2.0.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/camera_info_manager
	ros-crystal/class_loader
	ros-crystal/cv_bridge
	ros-crystal/image_transport
	ros-crystal/rclcpp
	test? ( ros-crystal/ament_cmake_gtest )
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
