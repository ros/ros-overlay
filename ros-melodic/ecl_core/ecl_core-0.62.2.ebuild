# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A set of tools and interfaces extending the capabilities of c++ to \
	pr[...]"
HOMEPAGE="http://www.ros.org/wiki/ecl_core"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/melodic/${PN}/0.62.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ecl_command_line
	ros-melodic/ecl_concepts
	ros-melodic/ecl_containers
	ros-melodic/ecl_converters
	ros-melodic/ecl_core_apps
	ros-melodic/ecl_devices
	ros-melodic/ecl_eigen
	ros-melodic/ecl_exceptions
	ros-melodic/ecl_formatters
	ros-melodic/ecl_geometry
	ros-melodic/ecl_ipc
	ros-melodic/ecl_linear_algebra
	ros-melodic/ecl_math
	ros-melodic/ecl_mpl
	ros-melodic/ecl_sigslots
	ros-melodic/ecl_statistics
	ros-melodic/ecl_streams
	ros-melodic/ecl_threads
	ros-melodic/ecl_time
	ros-melodic/ecl_type_traits
	ros-melodic/ecl_utilities
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
