# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A set of tools and interfaces extending the capabilities of c to	 provide "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_core/0.61.17-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ecl_command_line
	ros-kinetic/ecl_concepts
	ros-kinetic/ecl_containers
	ros-kinetic/ecl_converters
	ros-kinetic/ecl_core_apps
	ros-kinetic/ecl_devices
	ros-kinetic/ecl_eigen
	ros-kinetic/ecl_exceptions
	ros-kinetic/ecl_formatters
	ros-kinetic/ecl_geometry
	ros-kinetic/ecl_ipc
	ros-kinetic/ecl_linear_algebra
	ros-kinetic/ecl_math
	ros-kinetic/ecl_mpl
	ros-kinetic/ecl_sigslots
	ros-kinetic/ecl_statistics
	ros-kinetic/ecl_streams
	ros-kinetic/ecl_threads
	ros-kinetic/ecl_time
	ros-kinetic/ecl_type_traits
	ros-kinetic/ecl_utilities
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

