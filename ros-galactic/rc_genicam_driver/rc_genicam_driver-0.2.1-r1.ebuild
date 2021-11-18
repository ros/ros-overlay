# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Driver for rc_visard and rc_cube from Roboception GmbH"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}_ros2-release/archive/release/galactic/${PN}/0.2.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/diagnostic_updater
	ros-galactic/image_transport
	ros-galactic/rc_common_msgs
	ros-galactic/rc_genicam_api
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/sensor_msgs
	ros-galactic/stereo_msgs
	test? ( ros-galactic/ament_cmake_cppcheck )
	test? ( ros-galactic/ament_cmake_xmllint )
	test? ( ros-galactic/ament_lint_auto )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
