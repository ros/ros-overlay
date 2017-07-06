# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'hector_sensors_gazebo depends on the necessary plugins for using the sensors fro'"
HOMEPAGE="http://ros.org/wiki/hector_sensors_gazebo"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/indigo/hector_sensors_gazebo/0.3.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_plugins
	ros-indigo/hector_gazebo_plugins
	ros-indigo/hector_sensors_description
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

