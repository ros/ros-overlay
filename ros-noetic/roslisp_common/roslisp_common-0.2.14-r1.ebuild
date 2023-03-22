# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Common libraries to control ROS based robots. This stack contains\
	an i[...]"
HOMEPAGE="http://ros.org/wiki/roslisp_common"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.2.14-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib_lisp
	ros-noetic/cl_tf
	ros-noetic/cl_tf2
	ros-noetic/cl_transforms
	ros-noetic/cl_transforms_stamped
	ros-noetic/cl_urdf
	ros-noetic/cl_utils
	ros-noetic/roslisp_utilities
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
