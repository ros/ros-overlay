# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="swri_image_util"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/galactic/${PN}/3.3.2-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_cpp
	ros-galactic/camera_calibration_parsers
	ros-galactic/cv_bridge
	ros-galactic/geometry_msgs
	ros-galactic/image_geometry
	ros-galactic/image_transport
	ros-galactic/message_filters
	ros-galactic/nav_msgs
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/rclpy
	ros-galactic/std_msgs
	ros-galactic/swri_geometry_util
	ros-galactic/swri_math_util
	ros-galactic/swri_opencv_util
	ros-galactic/swri_roscpp
	ros-galactic/tf2
	test? ( ros-galactic/ament_cmake_gtest )
	dev-libs/boost[python]
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
