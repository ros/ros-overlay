# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package is a wrapper for the implementation of EKF-based SLAM with ran[...]"
HOMEPAGE="http://mrpt.org/"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/${PN}/0.1.10-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/mrpt1
	ros-melodic/mrpt_bridge
	ros-melodic/mrpt_rawlog
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/roslaunch
	ros-melodic/roslib
	ros-melodic/rviz
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
