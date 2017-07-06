# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'hector_gazebo_thermal_camera provides a gazebo plugin that produces simulated th'"
HOMEPAGE="http://ros.org/wiki/hector_gazebo_thermal_camera"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_gazebo-release/archive/release/kinetic/hector_gazebo_thermal_camera/0.5.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/gazebo_plugins
	ros-kinetic/roscpp
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	=sci-electronics/gazebo-7*
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

