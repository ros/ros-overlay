# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="3-dof configuration space planner for mobile robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/neonavigation-release/archive/release/lunar/${PN}/0.2.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/costmap_cspace
	ros-lunar/costmap_cspace_msgs
	ros-lunar/geometry_msgs
	ros-lunar/move_base_msgs
	ros-lunar/nav_msgs
	ros-lunar/neonavigation_common
	ros-lunar/planner_cspace_msgs
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_srvs
	ros-lunar/tf
	ros-lunar/trajectory_msgs
	test? ( ros-lunar/roslint )
	test? ( ros-lunar/rostest )
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
