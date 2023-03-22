# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Client implementation to use TF2 from Common Lisp"
HOMEPAGE="https://github.com/ros/roslisp_common/issues"
SRC_URI="https://github.com/ros-gbp/roslisp_common-release/archive/release/noetic/${PN}/0.2.14-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib_lisp
	ros-noetic/cl_transforms_stamped
	ros-noetic/cl_utils
	ros-noetic/roslisp
	ros-noetic/tf2_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
