# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Integration test suite based on roslaunch that is compatible with xUnit fra[...]"
HOMEPAGE="http://ros.org/wiki/rostest"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rostest/1.11.21-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosgraph
	ros-indigo/roslaunch
	ros-indigo/rosmaster
	ros-indigo/rospy
	ros-indigo/rosunit
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
