# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Common libraries to control ROS based robots. This stack contains\
	an i[...]"
HOMEPAGE="http://ros.org/wiki/roslisp_common"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/0.2.12-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib_lisp
	ros-kinetic/cl_tf
	ros-kinetic/cl_tf2
	ros-kinetic/cl_transforms
	ros-kinetic/cl_transforms_stamped
	ros-kinetic/cl_urdf
	ros-kinetic/cl_utils
	ros-kinetic/roslisp_utilities
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
