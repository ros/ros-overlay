# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A rosout GUI viewer developed at Southwest Research Insititute as an\
	 [...]"
HOMEPAGE="http://ros.org/wiki/swri_console"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/dashing/${PN}/2.0.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/rcl_interfaces
	ros-dashing/rclcpp
	ros-dashing/rosidl_default_runtime
	dev-libs/boost[python]
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/rosidl_default_generators
	dev-qt/qtopengl:5
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
