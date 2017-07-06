# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The containers included here are intended to extend the stl containers.
	In a'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/indigo/ecl_containers/0.61.18-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ecl_config
	ros-indigo/ecl_converters
	ros-indigo/ecl_errors
	ros-indigo/ecl_exceptions
	ros-indigo/ecl_formatters
	ros-indigo/ecl_license
	ros-indigo/ecl_mpl
	ros-indigo/ecl_type_traits
	ros-indigo/ecl_utilities
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

