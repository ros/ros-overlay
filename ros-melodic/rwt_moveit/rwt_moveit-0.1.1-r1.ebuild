# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides a web user interface of <a href=\"http://moveit.ros.o[...]"
HOMEPAGE="http://wiki.ros.org/rwt_moveit"
SRC_URI="https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/${PN}/0.1.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/interactive_marker_proxy
	ros-melodic/kdl_parser
	ros-melodic/message_runtime
	ros-melodic/moveit_msgs
	ros-melodic/orocos_kdl
	ros-melodic/robot_state_publisher
	ros-melodic/rosbridge_server
	ros-melodic/rospy
	ros-melodic/roswww
	ros-melodic/rwt_utils_3rdparty
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/tf2_web_republisher
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
