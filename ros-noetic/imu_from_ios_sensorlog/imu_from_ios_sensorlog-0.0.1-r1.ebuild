# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The imu_from_ios_sensorlog package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pietrocolombo/${PN}-release/archive/release/noetic/${PN}/0.0.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="TODO-CATKIN-PACKAGE-LICENSE"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf2
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
