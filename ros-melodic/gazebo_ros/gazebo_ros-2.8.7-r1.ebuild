# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides ROS plugins that offer message and service publishers for interfac[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros-gbp/${PN}_pkgs-release/archive/release/melodic/${PN}/2.8.7-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/gazebo_dev
	ros-melodic/gazebo_msgs
	ros-melodic/geometry_msgs
	ros-melodic/roscpp
	ros-melodic/rosgraph_msgs
	ros-melodic/roslib
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	dev-lang/python
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
