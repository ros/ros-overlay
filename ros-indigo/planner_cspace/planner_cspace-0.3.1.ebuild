# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="3-dof configuration space planner for mobile robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/neonavigation-release/archive/release/indigo/${PN}/0.3.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/costmap_cspace
	ros-indigo/costmap_cspace_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/geometry_msgs
	ros-indigo/move_base_msgs
	ros-indigo/nav_msgs
	ros-indigo/neonavigation_common
	ros-indigo/planner_cspace_msgs
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_srvs
	ros-indigo/tf2
	ros-indigo/tf2_geometry_msgs
	ros-indigo/tf2_ros
	ros-indigo/trajectory_msgs
	ros-indigo/trajectory_tracker_msgs
	test? ( ros-indigo/map_server )
	test? ( ros-indigo/roslint )
	test? ( ros-indigo/rostest )
	test? ( ros-indigo/rosunit )
	test? ( ros-indigo/trajectory_tracker )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
