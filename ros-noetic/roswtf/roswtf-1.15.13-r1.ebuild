# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="roswtf is a tool for diagnosing issues with a running ROS system. Think of [...]"
HOMEPAGE="http://wiki.ros.org/roswtf"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/${PN}/1.15.13-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/rosbuild
	ros-noetic/rosgraph
	ros-noetic/roslaunch
	ros-noetic/roslib
	ros-noetic/rosnode
	ros-noetic/rosservice
	test? ( ros-noetic/cmake_modules )
	test? ( ros-noetic/rosbag )
	test? ( ros-noetic/roslang )
	test? ( ros-noetic/std_srvs )
	dev-python/paramiko
	dev-python/rospkg
	dev-python/paramiko
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
