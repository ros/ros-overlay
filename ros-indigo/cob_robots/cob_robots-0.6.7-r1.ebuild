# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack holds packages for hardware configuration as well as launch file[...]"
HOMEPAGE="http://ros.org/wiki/cob_robots"
SRC_URI="https://github.com/ipa320/cob_robots-release/archive/release/indigo/cob_robots/0.6.7-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_bringup
	ros-indigo/cob_default_robot_behavior
	ros-indigo/cob_default_robot_config
	ros-indigo/cob_hardware_config
	ros-indigo/cob_moveit_config
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
