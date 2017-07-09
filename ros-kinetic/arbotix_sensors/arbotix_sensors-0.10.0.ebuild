# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Extends the arbotix_node package with a number of more sophisticated ROS wrapper"
HOMEPAGE="http://ros.org/wiki/arbotix_sensors"
SRC_URI="https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/kinetic/arbotix_sensors/0.10.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/arbotix_python
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

