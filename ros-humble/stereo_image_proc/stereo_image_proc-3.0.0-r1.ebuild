# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Stereo and single image rectification and disparity processing."
HOMEPAGE="https://index.ros.org/p/stereo_image_proc/github-ros-perception-image_pipeline/"
SRC_URI="https://github.com/ros2-gbp/image_pipeline-release/archive/release/humble/${PN}/3.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/cv_bridge
	ros-humble/image_geometry
	ros-humble/image_proc
	ros-humble/image_transport
	ros-humble/message_filters
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/sensor_msgs
	ros-humble/stereo_msgs
	test? ( ros-humble/ament_cmake_pytest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/launch )
	test? ( ros-humble/launch_ros )
	test? ( ros-humble/launch_testing )
	test? ( ros-humble/launch_testing_ament_cmake )
	test? ( ros-humble/python_cmake_module )
	test? ( ros-humble/rclpy )
	test? ( ros-humble/ros_testing )
	test? ( media-libs/opencv[python] )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
