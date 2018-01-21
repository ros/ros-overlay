# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides simulated tactile sensors for the Schunk Dextrous\
  [...]"
HOMEPAGE="http://ros.org/wiki/schunk_simulated_tactile_sensors"
SRC_URI="https://github.com/ipa320/schunk_modular_robotics-release/archive/release/indigo/${PN}/0.6.10-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_msgs
	ros-indigo/rospy
	ros-indigo/schunk_sdh
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
