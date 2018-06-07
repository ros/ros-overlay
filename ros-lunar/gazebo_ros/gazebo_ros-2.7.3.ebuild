# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provides ROS plugins that offer message and service publishers for interfac[...]"
HOMEPAGE="http://gazebosim.org/tutorials?cat=connect_ros"
SRC_URI="https://github.com/ros-gbp/${PN}_pkgs-release/archive/release/lunar/${PN}/2.7.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/dynamic_reconfigure
	ros-lunar/gazebo_dev
	ros-lunar/gazebo_msgs
	ros-lunar/geometry_msgs
	ros-lunar/roscpp
	ros-lunar/rosgraph_msgs
	ros-lunar/roslib
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/tf
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
