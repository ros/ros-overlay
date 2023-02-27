# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A set of tools and interfaces extending the capabilities of c++ to\
	pro[...]"
HOMEPAGE="http://www.ros.org/wiki/ecl_core"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/galactic/${PN}/1.2.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/ecl_command_line
	ros-galactic/ecl_concepts
	ros-galactic/ecl_containers
	ros-galactic/ecl_converters
	ros-galactic/ecl_core_apps
	ros-galactic/ecl_devices
	ros-galactic/ecl_eigen
	ros-galactic/ecl_exceptions
	ros-galactic/ecl_formatters
	ros-galactic/ecl_geometry
	ros-galactic/ecl_ipc
	ros-galactic/ecl_linear_algebra
	ros-galactic/ecl_math
	ros-galactic/ecl_mpl
	ros-galactic/ecl_sigslots
	ros-galactic/ecl_statistics
	ros-galactic/ecl_streams
	ros-galactic/ecl_threads
	ros-galactic/ecl_time
	ros-galactic/ecl_type_traits
	ros-galactic/ecl_utilities
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
