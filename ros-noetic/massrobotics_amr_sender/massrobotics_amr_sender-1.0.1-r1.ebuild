# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="MassRobotics AMR Interop Sender"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/inorbit-ai/ros_amr_interop-release/archive/release/noetic/${PN}/1.0.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="3-Clause-BSD-License"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/nav_msgs
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf2_kdl
	dev-python/python_orocos_kdl
	dev-python/websockets
	test? ( dev-python/jsonschema )
	test? ( dev-python/mock )
	test? ( dev-python/pep8 )
	test? ( dev-python/pytest )
	test? ( dev-python/pytest-mock )
	test? ( dev-python/pyyaml )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
