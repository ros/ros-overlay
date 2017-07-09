# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="hector_sensors_description contains URDF xacro macros for sensors, so they are e"
HOMEPAGE="http://ros.org/wiki/hector_sensors_description"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/kinetic/hector_sensors_description/0.4.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

