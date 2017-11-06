# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="mrpt_ekf_slam_2d"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/indigo/mrpt_ekf_slam_2d/0.1.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( BSD BSD BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/mrpt_bridge
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	sci-electronics/mrpt
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/visualization_msgs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
