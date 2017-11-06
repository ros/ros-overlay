# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="att#text"
HOMEPAGE="http://wiki.ros.org/robot_state_publisher"
SRC_URI="https://github.com/ros-gbp/robot_state_publisher-release/archive/release/indigo/robot_state_publisher/1.11.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	ros-indigo/kdl_parser
	ros-indigo/orocos_kdl
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/rostime
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/tf2_kdl
	ros-indigo/tf2_ros
	ros-indigo/tf_conversions
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/cmake_modules
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

