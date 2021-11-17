# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A set of tools and interfaces extending the capabilities of c++ to \
	pr[...]"
HOMEPAGE="http://www.ros.org/wiki/ecl_core"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/noetic/${PN}/0.62.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/ecl_command_line
	ros-noetic/ecl_concepts
	ros-noetic/ecl_containers
	ros-noetic/ecl_converters
	ros-noetic/ecl_core_apps
	ros-noetic/ecl_devices
	ros-noetic/ecl_eigen
	ros-noetic/ecl_exceptions
	ros-noetic/ecl_formatters
	ros-noetic/ecl_geometry
	ros-noetic/ecl_ipc
	ros-noetic/ecl_linear_algebra
	ros-noetic/ecl_math
	ros-noetic/ecl_mpl
	ros-noetic/ecl_sigslots
	ros-noetic/ecl_statistics
	ros-noetic/ecl_streams
	ros-noetic/ecl_threads
	ros-noetic/ecl_time
	ros-noetic/ecl_type_traits
	ros-noetic/ecl_utilities
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
