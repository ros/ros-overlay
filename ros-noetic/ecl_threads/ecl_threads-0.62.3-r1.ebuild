# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package provides the c++ extensions for a variety of threaded \
	 p[...]"
HOMEPAGE="http://wiki.ros.org/ecl_threads"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/${PN}/0.62.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/ecl_build
	ros-noetic/ecl_concepts
	ros-noetic/ecl_config
	ros-noetic/ecl_errors
	ros-noetic/ecl_exceptions
	ros-noetic/ecl_license
	ros-noetic/ecl_time
	ros-noetic/ecl_utilities
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
