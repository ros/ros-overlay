# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Provides ROS plugins that offer message and service publishers for interfac[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros-gbp/${PN}_pkgs-release/archive/release/noetic/${PN}/2.9.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/dynamic_reconfigure
	ros-noetic/gazebo_dev
	ros-noetic/gazebo_msgs
	ros-noetic/geometry_msgs
	ros-noetic/roscpp
	ros-noetic/rosgraph_msgs
	ros-noetic/roslib
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf
	dev-lang/python
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
