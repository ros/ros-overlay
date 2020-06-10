# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Twist multiplexer, which multiplex several velocity commands \(topics\) and[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/3.1.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="CC-BY-NC-SA-4.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/diagnostic_updater
	ros-melodic/geometry_msgs
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/twist_mux_msgs
	ros-melodic/visualization_msgs
	test? ( ros-melodic/rospy )
	test? ( ros-melodic/rostopic )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
