# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides launch files for starting a simulated CareObot"
HOMEPAGE="http://ros.org/wiki/cob_bringup_sim"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/indigo/cob_bringup_sim/0.6.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_default_env_config
	ros-indigo/cob_default_robot_config
	ros-indigo/cob_gazebo
	ros-indigo/cob_gazebo_worlds
	ros-indigo/gazebo_msgs
	ros-indigo/gazebo_ros
	ros-indigo/geometry_msgs
	ros-indigo/roslaunch
	ros-indigo/roslib
	ros-indigo/rospy
	ros-indigo/tf
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

