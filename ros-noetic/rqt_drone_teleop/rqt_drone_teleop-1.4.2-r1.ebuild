# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A common drone teleop interface for all drone exercises in the JdeRobot Rob[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/JdeRobot/drones-release/archive/release/noetic/${PN}/1.4.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/drone_wrapper
	ros-noetic/geometry_msgs
	ros-noetic/roslib
	ros-noetic/rospy
	ros-noetic/rqt_gui
	ros-noetic/rqt_gui_py
	ros-noetic/sensor_msgs
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
