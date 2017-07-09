# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="hector_gazebo_plugins provides gazebo plugins from Team Hector	 Currently i"
HOMEPAGE="http://ros.org/wiki/hector_gazebo_plugins"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/kinetic/hector_gazebo_plugins/0.5.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/gazebo_ros
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	=sci-electronics/gazebo-7*
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

