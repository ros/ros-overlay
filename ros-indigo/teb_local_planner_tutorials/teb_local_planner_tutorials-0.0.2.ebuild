# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The teb_local_planner_tutorials package'"
HOMEPAGE="http://wiki.ros.org/teb_local_planner_tutorials"
SRC_URI="https://github.com/rst-tu-dortmund/teb_local_planner_tutorials-release/archive/release/indigo/teb_local_planner_tutorials/0.0.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/navigation
	ros-indigo/stage_ros
	ros-indigo/teb_local_planner
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

