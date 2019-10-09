# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Tools related to the Mobile Robot Programming Toolkit \(MRPT\).\
	Refer [...]"
HOMEPAGE="http://wiki.ros.org/mrpt_navigation"
SRC_URI="https://github.com/mrpt-ros-pkg-release/${PN}-release/archive/release/melodic/${PN}/0.1.26-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/mrpt_local_obstacles
	ros-melodic/mrpt_localization
	ros-melodic/mrpt_map
	ros-melodic/mrpt_rawlog
	ros-melodic/mrpt_reactivenav2d
	ros-melodic/mrpt_tutorials
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
