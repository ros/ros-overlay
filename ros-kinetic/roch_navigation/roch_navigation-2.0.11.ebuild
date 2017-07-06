# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Autonomous mapping and navigation demos for the SawYer Roch'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch-release/archive/release/kinetic/roch_navigation/2.0.11-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/amcl
	ros-kinetic/base_local_planner
	ros-kinetic/dwa_local_planner
	ros-kinetic/frontier_exploration
	ros-kinetic/gmapping
	ros-kinetic/map_server
	ros-kinetic/move_base
	ros-kinetic/navfn
	ros-kinetic/nodelet
	ros-kinetic/roch_bringup
	ros-kinetic/roch_safety_controller
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/yocs_cmd_vel_mux
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

