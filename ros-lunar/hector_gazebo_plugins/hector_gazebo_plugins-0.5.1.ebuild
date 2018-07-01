# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="hector_gazebo_plugins provides gazebo plugins from Team Hector.\
	 Curre[...]"
HOMEPAGE="http://ros.org/wiki/hector_gazebo_plugins"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/lunar/${PN}/0.5.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/dynamic_reconfigure
	ros-lunar/gazebo_ros
	ros-lunar/geometry_msgs
	ros-lunar/message_runtime
	ros-lunar/nav_msgs
	ros-lunar/roscpp
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/tf
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/gazebo_dev
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
