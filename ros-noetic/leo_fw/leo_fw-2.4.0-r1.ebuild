# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Binary releases of Leo Rover firmware and related utilities"
HOMEPAGE="http://wiki.ros.org/leo_fw"
SRC_URI="https://github.com/fictionlab-gbp/leo_robot-release/archive/release/noetic/${PN}/2.4.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/leo_msgs
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/rosgraph
	ros-noetic/rosmon_msgs
	ros-noetic/rosnode
	ros-noetic/rospy
	ros-noetic/rosservice
	ros-noetic/sensor_msgs
	ros-noetic/std_srvs
	dev-python/numpy
	dev-python/rospkg
	dev-python/whichcraft
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
