# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The drone_wrapper package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/JdeRobot/drones-release/archive/release/kinetic/${PN}/1.0.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/gazebo_ros
	ros-kinetic/geometry_msgs
	ros-kinetic/mavros
	ros-kinetic/mavros_msgs
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
