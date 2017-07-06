# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'RViz plugins for the Oculus Rift.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/thedash/oculus_rviz_plugins-release/archive/release/indigo/oculus_rviz_plugins/0.0.9-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/oculus_sdk
	ros-indigo/roscpp
	ros-indigo/rviz
	ros-indigo/tf
	dev-libs/boost
	dev-games/ogre
	dev-qt/qtcore:4
	dev-qt/qtopengl:4
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

