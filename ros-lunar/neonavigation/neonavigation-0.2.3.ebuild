# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The neonavigation meta-package including 3-dof configuration space planner"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/${PN}-release/archive/release/lunar/${PN}/0.2.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/costmap_cspace
	ros-lunar/joystick_interrupt
	ros-lunar/map_organizer
	ros-lunar/neonavigation_common
	ros-lunar/neonavigation_launch
	ros-lunar/obj_to_pointcloud
	ros-lunar/planner_cspace
	ros-lunar/safety_limiter
	ros-lunar/track_odometry
	ros-lunar/trajectory_tracker
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
