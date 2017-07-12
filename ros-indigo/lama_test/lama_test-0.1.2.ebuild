# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The lama_test package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/lama-imr/lama_test-release/archive/release/indigo/lama_test/0.1.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dfs_explorer
	ros-indigo/lama_interfaces
	ros-indigo/lj_costmap
	ros-indigo/lj_laser_heading
	ros-indigo/local_map
	ros-indigo/nj_costmap
	ros-indigo/nj_escape_crossing
	ros-indigo/nj_laser
	ros-indigo/nj_oa_costmap
	ros-indigo/nj_oa_laser
	ros-indigo/pm_mcc
	ros-indigo/rviz
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

