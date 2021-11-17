# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package allows you to publish the state of a robot to\
	<a href=\"h[...]"
HOMEPAGE="http://wiki.ros.org/robot_state_publisher"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/1.15.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/kdl_parser
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/rostime
	ros-noetic/sensor_msgs
	ros-noetic/tf
	ros-noetic/tf2_kdl
	ros-noetic/tf2_ros
	test? ( ros-noetic/rosbag )
	test? ( ros-noetic/rostest )
	sci-libs/orocos_kdl
	sci-libs/orocos_kdl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-cpp/eigen
	dev-libs/urdfdom_headers
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
