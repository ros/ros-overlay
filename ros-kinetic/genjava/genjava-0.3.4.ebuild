# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Java ROS message and service generators."
HOMEPAGE="http://www.ros.org/wiki/genjava"
SRC_URI="https://github.com/rosjava-release/${PN}-release/archive/release/kinetic/${PN}/0.3.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/genmsg
	ros-kinetic/rosjava_bootstrap
	ros-kinetic/rosjava_build_tools
	dev-python/catkin_pkg
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
