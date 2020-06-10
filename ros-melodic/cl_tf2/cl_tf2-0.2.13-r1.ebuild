# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Client implementation to use TF2 from Common Lisp"
HOMEPAGE="https://github.com/ros/roslisp_common/issues"
SRC_URI="https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/${PN}/0.2.13-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib_lisp
	ros-melodic/cl_transforms_stamped
	ros-melodic/cl_utils
	ros-melodic/roslisp
	ros-melodic/tf2_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
