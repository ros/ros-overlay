# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="hector_components_description contains URDF xacro macros for robot componen[...]"
HOMEPAGE="http://ros.org/wiki/hector_components_description"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/melodic/${PN}/0.5.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/hector_sensors_description
	ros-melodic/hector_xacro_tools
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
