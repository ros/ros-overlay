# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="hector_gazebo_plugins provides gazebo plugins from Team Hector.\
	 Curre[...]"
HOMEPAGE="http://ros.org/wiki/hector_gazebo_plugins"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/melodic/${PN}/0.5.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/gazebo_ros
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/gazebo_dev
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
