# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Cross platform filesystem utilities \(until c++11 makes its way in\)."
HOMEPAGE="http://wiki.ros.org/ecl_filesystem"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/${PN}/0.62.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ecl_build
	ros-melodic/ecl_config
	ros-melodic/ecl_errors
	ros-melodic/ecl_exceptions
	ros-melodic/ecl_license
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
