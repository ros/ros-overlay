# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Driver for rc_visard and rc_cube from Roboception GmbH"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}_ros2-release/archive/release/humble/${PN}/0.3.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/diagnostic_updater
	ros-humble/image_transport
	ros-humble/rc_common_msgs
	ros-humble/rc_genicam_api
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/sensor_msgs
	ros-humble/stereo_msgs
	test? ( ros-humble/ament_cmake_cppcheck )
	test? ( ros-humble/ament_cmake_xmllint )
	test? ( ros-humble/ament_lint_auto )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
