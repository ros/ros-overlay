# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Autonomous mapping and navigation demos for the Soy Roch"
HOMEPAGE="http://ros.org/wiki/roch_navigation"
SRC_URI="https://github.com/SawYerRobotics-release/roch-release/archive/release/indigo/${PN}/1.0.17-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/amcl
	ros-indigo/base_local_planner
	ros-indigo/dwa_local_planner
	ros-indigo/frontier_exploration
	ros-indigo/gmapping
	ros-indigo/map_server
	ros-indigo/move_base
	ros-indigo/navfn
	ros-indigo/nodelet
	ros-indigo/roch_bringup
	ros-indigo/roch_safety_controller
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/yocs_cmd_vel_mux
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
