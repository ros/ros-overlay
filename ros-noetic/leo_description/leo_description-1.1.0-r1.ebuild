# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="URDF Description package for Leo Rover"
HOMEPAGE="http://wiki.ros.org/leo_description"
SRC_URI="https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/${PN}/1.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/robot_state_publisher
	ros-noetic/xacro
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
