# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="roswtf is a tool for diagnosing issues with a running ROS system. Think of [...]"
HOMEPAGE="http://ros.org/wiki/roswtf"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/${PN}/1.12.14-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/rosbuild
	ros-kinetic/rosgraph
	ros-kinetic/roslaunch
	ros-kinetic/roslib
	ros-kinetic/rosnode
	ros-kinetic/rosservice
	test? ( ros-kinetic/cmake_modules )
	dev-python/paramiko
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
