# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Contains messages and services for MAV communication"
HOMEPAGE="https://github.com/ethz-asl/mav_comm"
SRC_URI="https://github.com/ethz-asl/${PN}-release/archive/release/indigo/${PN}/3.3.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="ASL 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/mav_msgs
	ros-indigo/mav_planning_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
