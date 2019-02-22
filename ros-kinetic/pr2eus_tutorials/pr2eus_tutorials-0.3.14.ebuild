# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="pr2eus_tutorials"
HOMEPAGE="http://ros.org/wiki/pr2eus_tutorials"
SRC_URI="https://github.com/tork-a/jsk_pr2eus-release/archive/release/kinetic/${PN}/0.3.14-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/jsk_interactive_marker
	ros-kinetic/jsk_pcl_ros
	ros-kinetic/pr2eus
	ros-kinetic/roseus_tutorials
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
