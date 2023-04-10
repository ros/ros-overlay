# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ROS2 Driver for the SICK safetyscanners"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SICKAG/${PN}-release/archive/release/foxy/${PN}/1.0.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="ALv2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/rclcpp
	ros-foxy/rclcpp_lifecycle
	ros-foxy/sensor_msgs
	ros-foxy/sick_safetyscanners2_interfaces
	ros-foxy/sick_safetyscanners_base
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
