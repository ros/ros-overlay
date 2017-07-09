# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package which implements capabilities, including code to parse capability interf"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/capabilities-release/archive/release/kinetic/capabilities/0.2.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/bondpy
	ros-kinetic/message_runtime
	ros-kinetic/nodelet
	ros-kinetic/roslaunch
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

