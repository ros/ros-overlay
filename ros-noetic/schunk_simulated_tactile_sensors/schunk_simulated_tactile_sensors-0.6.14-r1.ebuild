# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package provides simulated tactile sensors for the Schunk Dextrous\
  [...]"
HOMEPAGE="http://ros.org/wiki/schunk_simulated_tactile_sensors"
SRC_URI="https://github.com/ipa320/schunk_modular_robotics-release/archive/release/noetic/${PN}/0.6.14-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/gazebo_msgs
	ros-noetic/rospy
	ros-noetic/schunk_sdh
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
