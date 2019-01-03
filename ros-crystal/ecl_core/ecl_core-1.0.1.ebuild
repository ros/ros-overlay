# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A set of tools and interfaces extending the capabilities of c++ to\
	pro[...]"
HOMEPAGE="http://www.ros.org/wiki/ecl_core"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/crystal/${PN}/1.0.1-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/ecl_command_line
	ros-crystal/ecl_concepts
	ros-crystal/ecl_containers
	ros-crystal/ecl_converters
	ros-crystal/ecl_core_apps
	ros-crystal/ecl_devices
	ros-crystal/ecl_eigen
	ros-crystal/ecl_exceptions
	ros-crystal/ecl_formatters
	ros-crystal/ecl_geometry
	ros-crystal/ecl_ipc
	ros-crystal/ecl_linear_algebra
	ros-crystal/ecl_math
	ros-crystal/ecl_mpl
	ros-crystal/ecl_sigslots
	ros-crystal/ecl_statistics
	ros-crystal/ecl_streams
	ros-crystal/ecl_threads
	ros-crystal/ecl_time
	ros-crystal/ecl_type_traits
	ros-crystal/ecl_utilities
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
