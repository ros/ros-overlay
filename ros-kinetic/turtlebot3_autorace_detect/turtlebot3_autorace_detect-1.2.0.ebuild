# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="AutoRace ROS packages for feature detection with TurtleBot3 Auto"
HOMEPAGE="http://wiki.ros.org/turtlebot3_autorace_detect"
SRC_URI="https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace-release/archive/release/kinetic/${PN}/1.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/move_base_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
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
