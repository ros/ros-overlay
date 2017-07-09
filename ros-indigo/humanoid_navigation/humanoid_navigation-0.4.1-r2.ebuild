# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="NONE"
HOMEPAGE="http://ros.org/wiki/humanoid_navigation"
SRC_URI="https://github.com/AravindaDP/humanoid_navigation-release/archive/release/indigo/humanoid_navigation/0.4.1-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( BSD GPL-3 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/footstep_planner
	ros-indigo/gridmap_2d
	ros-indigo/humanoid_localization
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

