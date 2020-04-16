# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_gazebo_tools package provides helper tools for the gazebo simulation"
HOMEPAGE="http://ros.org/wiki/cob_gazebo_tools"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/melodic/${PN}/0.7.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/gazebo_msgs
	ros-melodic/geometry_msgs
	ros-melodic/roslib
	ros-melodic/rospy
	ros-melodic/tf
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
