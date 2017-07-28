# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The configuration node loads a given launch configuration and offers services to"
HOMEPAGE="http://ros.org/wiki/default_cfg_fkie"
SRC_URI="https://github.com/fkie-release/multimaster_fkie-release/archive/release/kinetic/default_cfg_fkie/0.7.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/multimaster_msgs_fkie
	ros-kinetic/roslaunch
	ros-kinetic/roslib
	ros-kinetic/rospy
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

