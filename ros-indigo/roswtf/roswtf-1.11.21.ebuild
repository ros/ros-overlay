# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="roswtf is a tool for diagnosing issues with a running ROS system Think of it as"
HOMEPAGE="http://ros.org/wiki/roswtf"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/roswtf/1.11.21-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosbuild
	ros-indigo/rosgraph
	ros-indigo/roslaunch
	ros-indigo/roslib
	ros-indigo/rosnode
	ros-indigo/rosservice
	dev-python/paramiko
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

