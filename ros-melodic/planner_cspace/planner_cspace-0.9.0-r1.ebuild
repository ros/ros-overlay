# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="3-dof configuration space planner for mobile robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/neonavigation-release/archive/release/melodic/${PN}/0.9.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/costmap_cspace
	ros-melodic/costmap_cspace_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/geometry_msgs
	ros-melodic/move_base_msgs
	ros-melodic/nav_msgs
	ros-melodic/neonavigation_common
	ros-melodic/planner_cspace_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_srvs
	ros-melodic/tf2
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_ros
	ros-melodic/trajectory_msgs
	ros-melodic/trajectory_tracker_msgs
	test? ( ros-melodic/map_server )
	test? ( ros-melodic/roslint )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/trajectory_tracker )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
