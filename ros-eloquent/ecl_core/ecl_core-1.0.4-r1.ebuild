# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A set of tools and interfaces extending the capabilities of c++ to\
	pro[...]"
HOMEPAGE="http://www.ros.org/wiki/ecl_core"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/eloquent/${PN}/1.0.4-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/ecl_command_line
	ros-eloquent/ecl_concepts
	ros-eloquent/ecl_containers
	ros-eloquent/ecl_converters
	ros-eloquent/ecl_core_apps
	ros-eloquent/ecl_devices
	ros-eloquent/ecl_eigen
	ros-eloquent/ecl_exceptions
	ros-eloquent/ecl_formatters
	ros-eloquent/ecl_geometry
	ros-eloquent/ecl_ipc
	ros-eloquent/ecl_linear_algebra
	ros-eloquent/ecl_math
	ros-eloquent/ecl_mpl
	ros-eloquent/ecl_sigslots
	ros-eloquent/ecl_statistics
	ros-eloquent/ecl_streams
	ros-eloquent/ecl_threads
	ros-eloquent/ecl_time
	ros-eloquent/ecl_type_traits
	ros-eloquent/ecl_utilities
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
