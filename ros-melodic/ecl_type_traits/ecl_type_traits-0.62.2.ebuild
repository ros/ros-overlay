# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Extends c++ type traits and implements a few more to boot."
HOMEPAGE="http://wiki.ros.org/ecl_type_traits"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/${PN}/0.62.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ecl_config
	ros-melodic/ecl_license
	ros-melodic/ecl_mpl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
