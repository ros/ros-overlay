# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Implementation of TF datatypes"
HOMEPAGE="http://ros.org/wiki/cl_transforms_stamped"
SRC_URI="https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/${PN}/0.2.12-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cl_transforms
	ros-kinetic/geometry_msgs
	ros-kinetic/roslisp
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
