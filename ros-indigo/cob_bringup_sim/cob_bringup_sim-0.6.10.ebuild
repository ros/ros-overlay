# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides launch files for starting a simulated Care-O-bot."
HOMEPAGE="http://ros.org/wiki/cob_bringup_sim"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/indigo/${PN}/0.6.10-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
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
	test? ( ros-indigo/cob_default_env_config )
	test? ( ros-indigo/cob_supported_robots )
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
