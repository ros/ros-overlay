# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A set of tools and interfaces extending the capabilities of c++ to\
	pro[...]"
HOMEPAGE="http://www.ros.org/wiki/ecl_core"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/dashing/${PN}/1.0.4-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/ecl_command_line
	ros-dashing/ecl_concepts
	ros-dashing/ecl_containers
	ros-dashing/ecl_converters
	ros-dashing/ecl_core_apps
	ros-dashing/ecl_devices
	ros-dashing/ecl_eigen
	ros-dashing/ecl_exceptions
	ros-dashing/ecl_formatters
	ros-dashing/ecl_geometry
	ros-dashing/ecl_ipc
	ros-dashing/ecl_linear_algebra
	ros-dashing/ecl_math
	ros-dashing/ecl_mpl
	ros-dashing/ecl_sigslots
	ros-dashing/ecl_statistics
	ros-dashing/ecl_streams
	ros-dashing/ecl_threads
	ros-dashing/ecl_time
	ros-dashing/ecl_type_traits
	ros-dashing/ecl_utilities
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
