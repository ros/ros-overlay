# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Meta package for the perception in the robocup rescue league"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/autonohm/${PN}/archive/release/indigo/${PN}/0.0.1-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ohm_rrl_motiondetection
	ros-indigo/ohm_rrl_perception_launch
	ros-indigo/ohm_rrl_perception_utility
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
