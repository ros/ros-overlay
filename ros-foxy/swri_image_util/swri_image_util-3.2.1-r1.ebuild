# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="swri_image_util"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/foxy/${PN}/3.2.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_index_cpp
	ros-foxy/camera_calibration_parsers
	ros-foxy/cv_bridge
	ros-foxy/geometry_msgs
	ros-foxy/image_geometry
	ros-foxy/image_transport
	ros-foxy/message_filters
	ros-foxy/nav_msgs
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/rclpy
	ros-foxy/std_msgs
	ros-foxy/swri_geometry_util
	ros-foxy/swri_math_util
	ros-foxy/swri_opencv_util
	ros-foxy/swri_roscpp
	ros-foxy/tf2
	test? ( ros-foxy/ament_cmake_gtest )
	dev-libs/boost[python]
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
