# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="roswtf is a tool for diagnosing issues with a running ROS system. Think of [...]"
HOMEPAGE="http://wiki.ros.org/roswtf"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/${PN}/1.14.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/rosbuild
	ros-melodic/rosgraph
	ros-melodic/roslaunch
	ros-melodic/roslib
	ros-melodic/rosnode
	ros-melodic/rosservice
	test? ( ros-melodic/cmake_modules )
	test? ( ros-melodic/rosbag )
	test? ( ros-melodic/roslang )
	test? ( ros-melodic/std_srvs )
	dev-python/paramiko
	dev-python/rospkg
	dev-python/paramiko
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
