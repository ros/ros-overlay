# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="NONE"
HOMEPAGE="http://wiki.ros.org/robot_state_publisher"
SRC_URI="https://github.com/ros-gbp/robot_state_publisher-release/archive/release/lunar/robot_state_publisher/1.13.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/catkin
	ros-lunar/kdl_parser
	ros-lunar/orocos_kdl
	ros-lunar/rosconsole
	ros-lunar/roscpp
	ros-lunar/rostime
	ros-lunar/sensor_msgs
	ros-lunar/tf
	ros-lunar/tf2_kdl
	ros-lunar/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/rostest
	dev-libs/urdfdom_headers
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

