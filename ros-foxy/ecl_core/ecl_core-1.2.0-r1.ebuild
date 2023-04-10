# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A set of tools and interfaces extending the capabilities of c++ to\
	pro[...]"
HOMEPAGE="http://www.ros.org/wiki/ecl_core"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/foxy/${PN}/1.2.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ecl_command_line
	ros-foxy/ecl_concepts
	ros-foxy/ecl_containers
	ros-foxy/ecl_converters
	ros-foxy/ecl_core_apps
	ros-foxy/ecl_devices
	ros-foxy/ecl_eigen
	ros-foxy/ecl_exceptions
	ros-foxy/ecl_formatters
	ros-foxy/ecl_geometry
	ros-foxy/ecl_ipc
	ros-foxy/ecl_linear_algebra
	ros-foxy/ecl_math
	ros-foxy/ecl_mpl
	ros-foxy/ecl_sigslots
	ros-foxy/ecl_statistics
	ros-foxy/ecl_streams
	ros-foxy/ecl_threads
	ros-foxy/ecl_time
	ros-foxy/ecl_type_traits
	ros-foxy/ecl_utilities
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
