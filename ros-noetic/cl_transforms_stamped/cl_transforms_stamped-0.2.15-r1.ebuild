# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Implementation of TF datatypes"
HOMEPAGE="http://ros.org/wiki/cl_transforms_stamped"
SRC_URI="https://github.com/ros-gbp/roslisp_common-release/archive/release/noetic/${PN}/0.2.15-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cl_transforms
	ros-noetic/geometry_msgs
	ros-noetic/roslisp
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
