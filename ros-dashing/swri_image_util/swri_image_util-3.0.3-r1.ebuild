# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="swri_image_util"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/${PN}/3.0.3-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/ament_index_cpp
	ros-dashing/camera_calibration_parsers
	ros-dashing/cv_bridge
	ros-dashing/geometry_msgs
	ros-dashing/image_geometry
	ros-dashing/image_transport
	ros-dashing/message_filters
	ros-dashing/nav_msgs
	ros-dashing/rclcpp
	ros-dashing/rclcpp_components
	ros-dashing/rclpy
	ros-dashing/std_msgs
	ros-dashing/swri_geometry_util
	ros-dashing/swri_math_util
	ros-dashing/swri_opencv_util
	ros-dashing/swri_roscpp
	ros-dashing/tf2
	test? ( ros-dashing/ament_cmake_gtest )
	dev-libs/boost[python]
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
