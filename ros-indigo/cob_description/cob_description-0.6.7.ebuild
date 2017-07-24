# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains the description \(mechanical, kinematic, visual,\
  etc.\) of"
HOMEPAGE="http://ros.org/wiki/cob_description"
SRC_URI="https://github.com/ipa320/cob_common-release/archive/release/indigo/cob_description/0.6.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_ros
	ros-indigo/rospy
	ros-indigo/rosunit
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

