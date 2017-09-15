# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Common libraries to control ROS based robots. This stack contains\
	an i[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/roslisp_common-release/archive/release/lunar/roslisp_common/0.2.10-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib_lisp
	ros-lunar/cl_tf
	ros-lunar/cl_tf2
	ros-lunar/cl_transforms
	ros-lunar/cl_transforms_stamped
	ros-lunar/cl_urdf
	ros-lunar/cl_utils
	ros-lunar/roslisp_utilities
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
