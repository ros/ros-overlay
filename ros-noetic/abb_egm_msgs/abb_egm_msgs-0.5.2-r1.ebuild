# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides ROS message definitions, representing Externally Guided Motion \(E[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/abb_robot_driver_interfaces-release/archive/release/noetic/${PN}/0.5.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/message_generation
	ros-noetic/message_runtime
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
