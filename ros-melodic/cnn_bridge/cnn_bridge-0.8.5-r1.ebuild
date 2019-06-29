# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cnn_bridge package take freeze graphs and publishes them as ROS messages"
HOMEPAGE="http://wiki.ros.org/cnn_bridge"
SRC_URI="https://github.com/wew84/${PN}-release/archive/release/melodic/${PN}/0.8.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/message_generation
	ros-melodic/message_runtime
	ros-melodic/roslaunch
	ros-melodic/roslib
	ros-melodic/rospy
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
