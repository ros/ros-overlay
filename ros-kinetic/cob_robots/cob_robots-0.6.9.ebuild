# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This stack holds packages for hardware configuration as well as launch file[...]"
HOMEPAGE="http://ros.org/wiki/cob_robots"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/kinetic/${PN}/0.6.9-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_bringup
	ros-kinetic/cob_default_robot_behavior
	ros-kinetic/cob_default_robot_config
	ros-kinetic/cob_hardware_config
	ros-kinetic/cob_moveit_config
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
