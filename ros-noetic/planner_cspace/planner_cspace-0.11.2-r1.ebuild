# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="3-dof configuration space planner for mobile robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/neonavigation-release/archive/release/noetic/${PN}/0.11.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/costmap_cspace
	ros-noetic/costmap_cspace_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/geometry_msgs
	ros-noetic/move_base_msgs
	ros-noetic/nav_msgs
	ros-noetic/neonavigation_common
	ros-noetic/planner_cspace_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_srvs
	ros-noetic/tf2
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	ros-noetic/trajectory_msgs
	ros-noetic/trajectory_tracker_msgs
	test? ( ros-noetic/map_server )
	test? ( ros-noetic/roslint )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/trajectory_tracker )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
