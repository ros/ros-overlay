# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The neonavigation meta-package including 3-dof configuration space planner"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/${PN}-release/archive/release/kinetic/${PN}/0.5.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/costmap_cspace
	ros-kinetic/joystick_interrupt
	ros-kinetic/map_organizer
	ros-kinetic/neonavigation_common
	ros-kinetic/neonavigation_launch
	ros-kinetic/obj_to_pointcloud
	ros-kinetic/planner_cspace
	ros-kinetic/safety_limiter
	ros-kinetic/track_odometry
	ros-kinetic/trajectory_tracker
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
