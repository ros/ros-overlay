# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides launch files for starting a simulated Care-O-bot."
HOMEPAGE="http://ros.org/wiki/cob_bringup_sim"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/${PN}/0.6.10-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cob_default_env_config
	ros-kinetic/cob_default_robot_config
	ros-kinetic/cob_gazebo
	ros-kinetic/cob_gazebo_worlds
	ros-kinetic/gazebo_msgs
	ros-kinetic/gazebo_ros
	ros-kinetic/geometry_msgs
	ros-kinetic/roslaunch
	ros-kinetic/roslib
	ros-kinetic/rospy
	ros-kinetic/tf
	test? ( ros-kinetic/cob_default_env_config )
	test? ( ros-kinetic/cob_supported_robots )
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
