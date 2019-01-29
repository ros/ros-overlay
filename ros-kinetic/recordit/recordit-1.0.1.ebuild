# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Record the joint_states and/or the mobile changes \(via tf\) of a ROS syste[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa-jfh/robot_recorder-release/archive/release/kinetic/${PN}/1.0.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
	ros-kinetic/urdfdom_py
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/xacro )
	virtual/python-enum34
	dev-python/simplejson
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
