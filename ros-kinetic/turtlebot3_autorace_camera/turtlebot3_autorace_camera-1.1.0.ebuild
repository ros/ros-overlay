# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="TurtleBot3 AutoRace ROS package that controls Raspberry Pi Camera, and proc[...]"
HOMEPAGE="http://wiki.ros.org/turtlebot3_autorace_camera"
SRC_URI="https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace-release/archive/release/kinetic/${PN}/1.1.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	virtual/python-enum34
	dev-python/numpy
	media-libs/opencv[python]
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
