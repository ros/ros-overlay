# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Driver for the UR5/10 arm based on the Polyscope control scheme."
HOMEPAGE="http://ros.org/wiki/ur_driver"
SRC_URI="https://github.com/ros-industrial-release/universal_robot-release/archive/release/indigo/${PN}/1.1.11-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/control_msgs
	ros-indigo/dynamic_reconfigure
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/trajectory_msgs
	ros-indigo/ur_msgs
	dev-python/lxml
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
