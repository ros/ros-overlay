# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Contains components for processing depth images such as those\
	 produce[...]"
HOMEPAGE="https://index.ros.org/p/depth_image_proc/github-ros-perception-image_pipeline/"
SRC_URI="https://github.com/ros2-gbp/image_pipeline-release/archive/release/galactic/${PN}/2.2.1-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/cv_bridge
	ros-galactic/image_geometry
	ros-galactic/image_transport
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/sensor_msgs
	ros-galactic/stereo_msgs
	ros-galactic/tf2
	ros-galactic/tf2_eigen
	ros-galactic/tf2_ros
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_auto
	ros-galactic/class_loader
	ros-galactic/message_filters
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
