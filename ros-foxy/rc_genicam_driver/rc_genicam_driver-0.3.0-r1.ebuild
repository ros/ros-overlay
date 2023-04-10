# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Driver for rc_visard and rc_cube from Roboception GmbH"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/roboception-gbp/${PN}_ros2-release/archive/release/foxy/${PN}/0.3.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/diagnostic_updater
	ros-foxy/image_transport
	ros-foxy/rc_common_msgs
	ros-foxy/rc_genicam_api
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/sensor_msgs
	ros-foxy/stereo_msgs
	test? ( ros-foxy/ament_cmake_cppcheck )
	test? ( ros-foxy/ament_cmake_xmllint )
	test? ( ros-foxy/ament_lint_auto )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
