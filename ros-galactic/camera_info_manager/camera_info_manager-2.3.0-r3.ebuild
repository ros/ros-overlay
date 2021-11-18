# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="This package provides a C++ interface for camera calibration\
	 informat[...]"
HOMEPAGE="http://ros.org/wiki/camera_info_manager"
SRC_URI="https://github.com/ros2-gbp/image_common-release/archive/release/galactic/${PN}/2.3.0-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_cpp
	ros-galactic/camera_calibration_parsers
	ros-galactic/rclcpp
	ros-galactic/rcpputils
	ros-galactic/sensor_msgs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
