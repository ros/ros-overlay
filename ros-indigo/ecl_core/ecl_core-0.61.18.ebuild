# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A set of tools and interfaces extending the capabilities of c++ to 
	provide '"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/indigo/ecl_core/0.61.18-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ecl_command_line
	ros-indigo/ecl_concepts
	ros-indigo/ecl_containers
	ros-indigo/ecl_converters
	ros-indigo/ecl_core_apps
	ros-indigo/ecl_devices
	ros-indigo/ecl_eigen
	ros-indigo/ecl_exceptions
	ros-indigo/ecl_formatters
	ros-indigo/ecl_geometry
	ros-indigo/ecl_ipc
	ros-indigo/ecl_linear_algebra
	ros-indigo/ecl_math
	ros-indigo/ecl_mpl
	ros-indigo/ecl_sigslots
	ros-indigo/ecl_statistics
	ros-indigo/ecl_streams
	ros-indigo/ecl_threads
	ros-indigo/ecl_time
	ros-indigo/ecl_type_traits
	ros-indigo/ecl_utilities
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

