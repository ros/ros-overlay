# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Default configuration of the different robots supported by the Care-O-bot stacks"
HOMEPAGE="http://ros.org/wiki/cob_default_robot_config"
SRC_URI="https://github.com/ipa320/cob_robots-release/archive/release/indigo/cob_default_robot_config/0.6.7-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/roslaunch
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cob_supported_robots
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

