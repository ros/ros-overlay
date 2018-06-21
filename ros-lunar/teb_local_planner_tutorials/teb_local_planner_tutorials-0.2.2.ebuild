# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The teb_local_planner_tutorials package"
HOMEPAGE="http://wiki.ros.org/teb_local_planner_tutorials"
SRC_URI="https://github.com/rst-tu-dortmund/${PN}-release/archive/release/lunar/${PN}/0.2.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/amcl
	ros-lunar/map_server
	ros-lunar/move_base
	ros-lunar/stage_ros
	ros-lunar/teb_local_planner
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
