# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Common libraries to control ROS based robots. This stack contains\
	an i[...]"
HOMEPAGE="http://ros.org/wiki/roslisp_common"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.2.13-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib_lisp
	ros-melodic/cl_tf
	ros-melodic/cl_tf2
	ros-melodic/cl_transforms
	ros-melodic/cl_transforms_stamped
	ros-melodic/cl_urdf
	ros-melodic/cl_utils
	ros-melodic/roslisp_utilities
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
