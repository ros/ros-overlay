# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="swri_image_util"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/eloquent/${PN}/3.2.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/ament_index_cpp
	ros-eloquent/camera_calibration_parsers
	ros-eloquent/cv_bridge
	ros-eloquent/geometry_msgs
	ros-eloquent/image_geometry
	ros-eloquent/image_transport
	ros-eloquent/message_filters
	ros-eloquent/nav_msgs
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_components
	ros-eloquent/rclpy
	ros-eloquent/std_msgs
	ros-eloquent/swri_geometry_util
	ros-eloquent/swri_math_util
	ros-eloquent/swri_opencv_util
	ros-eloquent/swri_roscpp
	ros-eloquent/tf2
	test? ( ros-eloquent/ament_cmake_gtest )
	dev-libs/boost[python]
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
