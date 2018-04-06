# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package allows you to publish the state of a robot to\
	<a href=\"h[...]"
HOMEPAGE="http://wiki.ros.org/robot_state_publisher"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/1.13.6-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
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
	test? ( ros-lunar/rostest )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	dev-libs/urdfdom_headers
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
