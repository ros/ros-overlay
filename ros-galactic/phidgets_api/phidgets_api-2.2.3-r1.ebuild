# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A C++ Wrapper for the Phidgets C API"
HOMEPAGE="http://ros.org/wiki/phidgets_api"
SRC_URI="https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/galactic/${PN}/2.2.3-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/libphidget22
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
