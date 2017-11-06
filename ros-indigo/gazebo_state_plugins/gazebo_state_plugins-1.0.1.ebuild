# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Offers topics and services related to the state of the world in Gazebo"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/JenniferBuehler/gazebo-pkgs-release/archive/release/indigo/gazebo_state_plugins/1.0.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/eigen_conversions
	ros-indigo/gazebo_ros
	ros-indigo/gazebo_world_plugin_loader
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/object_msgs
	ros-indigo/object_msgs_tools
	ros-indigo/roscpp
	ros-indigo/shape_msgs
	ros-indigo/std_msgs
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

