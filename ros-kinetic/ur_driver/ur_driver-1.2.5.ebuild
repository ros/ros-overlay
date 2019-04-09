# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Driver for the UR5/10 arm based on the Polyscope control scheme."
HOMEPAGE="http://ros.org/wiki/ur_driver"
SRC_URI="https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/${PN}/1.2.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/control_msgs
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/trajectory_msgs
	ros-kinetic/ur_msgs
	dev-python/lxml
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
