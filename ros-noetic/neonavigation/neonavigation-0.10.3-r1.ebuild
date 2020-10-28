# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The neonavigation meta-package including 3-dof configuration space planner"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/${PN}-release/archive/release/noetic/${PN}/0.10.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/costmap_cspace
	ros-noetic/joystick_interrupt
	ros-noetic/map_organizer
	ros-noetic/neonavigation_common
	ros-noetic/neonavigation_launch
	ros-noetic/obj_to_pointcloud
	ros-noetic/planner_cspace
	ros-noetic/safety_limiter
	ros-noetic/track_odometry
	ros-noetic/trajectory_tracker
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
