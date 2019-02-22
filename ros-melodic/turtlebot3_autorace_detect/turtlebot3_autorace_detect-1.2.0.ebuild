# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="AutoRace ROS packages for feature detection with TurtleBot3 Auto"
HOMEPAGE="http://wiki.ros.org/turtlebot3_autorace_detect"
SRC_URI="https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace-release/archive/release/melodic/${PN}/1.2.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/move_base_msgs
	ros-melodic/nav_msgs
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	virtual/python-enum34
	dev-python/numpy
	media-libs/opencv[python]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
