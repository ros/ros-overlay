# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="swri_image_util"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/ros2-gbp/marti_common-release/archive/release/humble/${PN}/3.5.1-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_cpp
	ros-humble/camera_calibration_parsers
	ros-humble/cv_bridge
	ros-humble/geometry_msgs
	ros-humble/image_geometry
	ros-humble/image_transport
	ros-humble/message_filters
	ros-humble/nav_msgs
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/rclpy
	ros-humble/std_msgs
	ros-humble/swri_geometry_util
	ros-humble/swri_math_util
	ros-humble/swri_opencv_util
	ros-humble/swri_roscpp
	ros-humble/tf2
	test? ( ros-humble/ament_cmake_gtest )
	dev-libs/boost[python]
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
