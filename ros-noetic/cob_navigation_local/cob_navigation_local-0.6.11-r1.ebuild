# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="This package holds config and launch files for running the  <a href=\"http:[...]"
HOMEPAGE="http://ros.org/wiki/cob_navigation_local"
SRC_URI="https://github.com/ipa320/cob_navigation-release/archive/release/noetic/${PN}/0.6.11-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cob_navigation_config
	ros-noetic/dwa_local_planner
	ros-noetic/move_base
	ros-noetic/rviz
	test? ( ros-noetic/cob_supported_robots )
	test? ( ros-noetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
