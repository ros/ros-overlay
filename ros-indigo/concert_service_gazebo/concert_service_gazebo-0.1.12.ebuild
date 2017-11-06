# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Sets up the gazebo robot manager as a service to assist in spawning/killing[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/concert_services-release/archive/release/indigo/concert_service_gazebo/0.1.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gateway_msgs
	ros-indigo/kobuki_gazebo
	ros-indigo/rocon_console
	ros-indigo/rocon_gateway_utils
	ros-indigo/rocon_launch
	ros-indigo/rocon_python_utils
	ros-indigo/rocon_std_msgs
	ros-indigo/roslib
	ros-indigo/rospy
	ros-indigo/turtlebot_gazebo
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
