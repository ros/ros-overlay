# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This stack holds packages for hardware configuration as well as launch file[...]"
HOMEPAGE="http://ros.org/wiki/cob_robots"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/noetic/${PN}/0.7.10-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_bringup
	ros-noetic/cob_default_robot_behavior
	ros-noetic/cob_default_robot_config
	ros-noetic/cob_hardware_config
	ros-noetic/cob_moveit_config
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
