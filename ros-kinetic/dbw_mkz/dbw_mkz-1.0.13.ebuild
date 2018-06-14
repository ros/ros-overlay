# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/${PN}_ros-release/archive/release/kinetic/${PN}/1.0.13-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dbw_mkz_can
	ros-kinetic/dbw_mkz_description
	ros-kinetic/dbw_mkz_joystick_demo
	ros-kinetic/dbw_mkz_msgs
	ros-kinetic/dbw_mkz_twist_controller
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
