# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This packages provides the controller configuration for simulating Care-O-bot in'"
HOMEPAGE="http://ros.org/wiki/cob_controller_configuration_gazebo"
SRC_URI="https://github.com/ipa320/cob_robots-release/archive/release/indigo/cob_controller_configuration_gazebo/0.6.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_bringup
	ros-indigo/cob_cam3d_throttle
	ros-indigo/cob_hardware_config
	ros-indigo/cob_phidgets
	ros-indigo/cob_script_server
	ros-indigo/diagnostic_msgs
	ros-indigo/roslaunch
	ros-indigo/rospy
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/topic_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

