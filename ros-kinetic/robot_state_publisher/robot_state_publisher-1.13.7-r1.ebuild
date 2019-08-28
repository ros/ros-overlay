# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package allows you to publish the state of a robot to\
	<a href=\"h[...]"
HOMEPAGE="http://wiki.ros.org/robot_state_publisher"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/1.13.7-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
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
	test? ( ros-kinetic/rostest )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	dev-libs/urdfdom_headers
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
