# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package is used for gridmap SLAM. The interface is similar to gmapping[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/kinetic/mrpt_rbpf_slam/0.1.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/mrpt_bridge
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	sci-electronics/mrpt
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/visualization_msgs
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

