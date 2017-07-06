# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Integration of Designator Communication via ROS as Lisp interface'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/code-iai-release/designator_integration-release/archive/release/indigo/designator_integration_lisp/0.0.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/alexandria
	ros-indigo/cl_tf2
	ros-indigo/designator_integration_msgs
	ros-indigo/roslisp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

