# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The neonavigation meta-package including 3-dof configuration space planner"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/${PN}-release/archive/release/melodic/${PN}/0.8.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/costmap_cspace
	ros-melodic/joystick_interrupt
	ros-melodic/map_organizer
	ros-melodic/neonavigation_common
	ros-melodic/neonavigation_launch
	ros-melodic/obj_to_pointcloud
	ros-melodic/planner_cspace
	ros-melodic/safety_limiter
	ros-melodic/track_odometry
	ros-melodic/trajectory_tracker
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
