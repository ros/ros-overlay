# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="att#text"
HOMEPAGE="http://wiki.ros.org/robot_state_publisher"
SRC_URI="https://github.com/ros-gbp/robot_state_publisher-release/archive/release/kinetic/robot_state_publisher/1.13.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	ros-kinetic/kdl_parser
	ros-kinetic/orocos_kdl
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/rostime
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/tf2_kdl
	ros-kinetic/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/rostest
	dev-libs/urdfdom_headers
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

