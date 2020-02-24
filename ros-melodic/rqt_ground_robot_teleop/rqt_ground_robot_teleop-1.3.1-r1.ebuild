# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A common ground robot teleop interface for all ground robot exercises in th[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/JdeRobot/drones-release/archive/release/melodic/${PN}/1.3.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/roslib
	ros-melodic/rospy
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_py
	ros-melodic/sensor_msgs
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
