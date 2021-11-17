# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="hector_gazebo_plugins provides gazebo plugins from Team Hector.\
	 Curre[...]"
HOMEPAGE="http://ros.org/wiki/hector_gazebo_plugins"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/noetic/${PN}/0.5.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/dynamic_reconfigure
	ros-noetic/gazebo_ros
	ros-noetic/geographic_msgs
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/gazebo_dev
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
