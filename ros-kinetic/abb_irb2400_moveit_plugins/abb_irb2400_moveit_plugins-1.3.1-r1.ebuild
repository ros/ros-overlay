# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>\
	  MoveIt plugins for the ABB 2400 \(and variants\).\
	</p>\
   [...]"
HOMEPAGE="http://ros.org/wiki/abb_irb2400_moveit_plugins"
SRC_URI="https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/${PN}/1.3.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/moveit_core
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/tf_conversions
	virtual/lapack
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
