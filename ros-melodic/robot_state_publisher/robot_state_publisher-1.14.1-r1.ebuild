# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package allows you to publish the state of a robot to\
	<a href=\"h[...]"
HOMEPAGE="http://wiki.ros.org/robot_state_publisher"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/1.14.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/catkin
	ros-melodic/kdl_parser
	ros-melodic/orocos_kdl
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/rostime
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/tf2_kdl
	ros-melodic/tf2_ros
	test? ( ros-melodic/rostest )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	dev-libs/urdfdom_headers
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
