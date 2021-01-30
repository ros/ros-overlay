# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Scripts and launch files for Leo Rover teleoperation"
HOMEPAGE="http://wiki.ros.org/leo"
SRC_URI="https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/${PN}/1.2.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/joy
	ros-noetic/teleop_twist_joy
	ros-noetic/teleop_twist_keyboard
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
