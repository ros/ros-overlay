# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="mrpt_icp_slam_2d contains a wrapper on MRPT\'s 2D ICP-SLAM algorithms."
HOMEPAGE="http://ros.org/wiki/mrpt_icp_slam_2d"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/${PN}/0.1.6-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/mrpt_bridge
	ros-melodic/mrpt_rawlog
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/rospy
	ros-melodic/rviz
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	sci-electronics/mrpt
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/visualization_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
