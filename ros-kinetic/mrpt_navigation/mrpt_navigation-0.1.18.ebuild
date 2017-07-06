# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Tools related to the Mobile Robot Programming Toolkit (MRPT).
	Refer to http:'"
HOMEPAGE="http://wiki.ros.org/mrpt_navigation"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_navigation/0.1.18-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/mrpt_bridge
	ros-kinetic/mrpt_local_obstacles
	ros-kinetic/mrpt_localization
	ros-kinetic/mrpt_map
	ros-kinetic/mrpt_msgs
	ros-kinetic/mrpt_rawlog
	ros-kinetic/mrpt_reactivenav2d
	ros-kinetic/mrpt_tutorials
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

