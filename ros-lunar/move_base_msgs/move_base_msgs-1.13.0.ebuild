# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Holds the action description and relevant messages for the move_base package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/navigation_msgs-release/archive/release/lunar/move_base_msgs/1.13.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib_msgs
	ros-lunar/geometry_msgs
	ros-lunar/message_runtime
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

