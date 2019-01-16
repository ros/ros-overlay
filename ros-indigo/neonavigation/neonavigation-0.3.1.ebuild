# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The neonavigation meta-package including 3-dof configuration space planner"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/${PN}-release/archive/release/indigo/${PN}/0.3.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/costmap_cspace
	ros-indigo/joystick_interrupt
	ros-indigo/map_organizer
	ros-indigo/neonavigation_common
	ros-indigo/neonavigation_launch
	ros-indigo/obj_to_pointcloud
	ros-indigo/planner_cspace
	ros-indigo/safety_limiter
	ros-indigo/track_odometry
	ros-indigo/trajectory_tracker
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
