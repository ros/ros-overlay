# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Metapackage of software for Leo Rover common to the robot and ROS desktop"
HOMEPAGE="http://wiki.ros.org/leo"
SRC_URI="https://github.com/fictionlab-gbp/${PN}_common-release/archive/release/noetic/${PN}/1.2.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/leo_description
	ros-noetic/leo_teleop
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
