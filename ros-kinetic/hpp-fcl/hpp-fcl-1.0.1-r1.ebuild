# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="HPP fork of FCL with bug fixes."
HOMEPAGE="https://github.com/humanoid-path-planner/hpp-fcl"
SRC_URI="https://github.com/ipab-slmc/${PN}_catkin-release/archive/release/kinetic/${PN}/1.0.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/octomap
	media-libs/assimp
	dev-libs/boost[python]
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
