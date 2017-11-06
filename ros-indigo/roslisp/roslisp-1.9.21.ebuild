# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Lisp client library for ROS, the Robot Operating System."
HOMEPAGE="http://ros.org/wiki/roslisp"
SRC_URI="https://github.com/ros-gbp/roslisp-release/archive/release/indigo/roslisp/1.9.21-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosgraph_msgs
	ros-indigo/roslang
	ros-indigo/rospack
	ros-indigo/std_srvs
	dev-lisp/sbcl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

