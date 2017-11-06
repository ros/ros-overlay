# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="COLLADA 15 Robot Models Repository	This repository is associated with the "
HOMEPAGE="http://www.openrave.org/en/main/robots.html"
SRC_URI="https://github.com/tork-a/openrave_planning-release/archive/release/indigo/collada_robots/0.0.5-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-vcs/git
	app-arch/unzip
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

