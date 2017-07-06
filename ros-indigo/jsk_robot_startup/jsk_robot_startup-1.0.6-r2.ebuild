# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The jsk_robot_startup package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_robot-release/archive/release/indigo/jsk_robot_startup/1.0.6-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/gmapping
	ros-indigo/jsk_recognition_msgs
	ros-indigo/mongodb_store
	ros-indigo/pointcloud_to_laserscan
	ros-indigo/roscpp
	ros-indigo/rospy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/diagnostic_msgs
	ros-indigo/pr2_mechanism_controllers
	ros-indigo/roseus
	ros-indigo/sensor_msgs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

