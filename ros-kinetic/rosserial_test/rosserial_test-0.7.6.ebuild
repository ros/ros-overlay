# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A specialized harness which allows endtoend integration testing of the	ros"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/rosserial_test/0.7.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/roscpp
	ros-kinetic/rosserial_client
	ros-kinetic/rosserial_msgs
	ros-kinetic/rosserial_python
	ros-kinetic/rosserial_server
	ros-kinetic/rostest
	ros-kinetic/std_msgs
	dev-cpp/gtest
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

