# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Toolsuite for running ROS environments directly from python code, without any sp"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/asmodehn/pyros-setup-release/archive/release/indigo/pyros_setup/0.0.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosgraph
	ros-indigo/roslaunch
	ros-indigo/rospy
	ros-indigo/rostest
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslint
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

