# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The robot_upstart package provides scripts which may be used to install\
  [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/${PN}-release/archive/release/melodic/${PN}/0.3.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/roslaunch
	ros-melodic/xacro
	test? ( ros-melodic/roslint )
	test? ( ros-melodic/rosunit )
	virtual/daemontools
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
