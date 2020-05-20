# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS-OpenRTM interfacing package for the opensource version of Kawada\'s Hir[...]"
HOMEPAGE="http://ros.org/wiki/hironx_ros_bridge"
SRC_URI="https://github.com/tork-a/rtmros_hironx-release/archive/release/melodic/${PN}/2.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/control_msgs
	ros-melodic/hrpsys_ros_bridge
	ros-melodic/moveit_commander
	ros-melodic/openni2_launch
	ros-melodic/rosbash
	ros-melodic/roslang
	ros-melodic/roslib
	ros-melodic/rospy
	ros-melodic/tf
	sci-visualization/gnuplot
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/mk
	ros-melodic/rosbuild
	ros-melodic/roslint
	app-arch/unzip
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
