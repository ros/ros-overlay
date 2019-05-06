# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="COLLADA 1.5 Robot Models Repository\
\
	This repository is associated wi[...]"
HOMEPAGE="http://www.openrave.org/en/main/robots.html"
SRC_URI="https://github.com/tork-a/openrave_planning-release/archive/release/kinetic/${PN}/0.0.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="T.D.B"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-vcs/git
	app-arch/unzip
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
