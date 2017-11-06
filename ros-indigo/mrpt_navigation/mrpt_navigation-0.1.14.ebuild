# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Tools related to the Mobile Robot Programming Toolkit MRPT Refer to http://w"
HOMEPAGE="http://wiki.ros.org/mrpt_navigation"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/indigo/mrpt_navigation/0.1.14-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/mrpt_bridge
	ros-indigo/mrpt_local_obstacles
	ros-indigo/mrpt_localization
	ros-indigo/mrpt_map
	ros-indigo/mrpt_msgs
	ros-indigo/mrpt_rawlog
	ros-indigo/mrpt_reactivenav2d
	ros-indigo/mrpt_tutorials
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

