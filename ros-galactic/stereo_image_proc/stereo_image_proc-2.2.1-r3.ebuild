# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Stereo and single image rectification and disparity processing."
HOMEPAGE="https://index.ros.org/p/stereo_image_proc/github-ros-perception-image_pipeline/"
SRC_URI="https://github.com/ros2-gbp/image_pipeline-release/archive/release/galactic/${PN}/2.2.1-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/cv_bridge
	ros-galactic/image_geometry
	ros-galactic/image_proc
	ros-galactic/image_transport
	ros-galactic/message_filters
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/sensor_msgs
	ros-galactic/stereo_msgs
	test? ( ros-galactic/ament_cmake_pytest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/launch )
	test? ( ros-galactic/launch_ros )
	test? ( ros-galactic/launch_testing )
	test? ( ros-galactic/launch_testing_ament_cmake )
	test? ( ros-galactic/python_cmake_module )
	test? ( ros-galactic/rclpy )
	test? ( media-libs/opencv[python] )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
