# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="flexbe_app provides a user interface \(editor + runtime control\) for the F[...]"
HOMEPAGE="http://ros.org/wiki/flexbe_app"
SRC_URI="https://github.com/FlexBE/${PN}-release/archive/release/kinetic/${PN}/2.1.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/genpy
	ros-kinetic/rospack
	ros-kinetic/rospy
	test? ( ros-kinetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
	net-misc/curl
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
