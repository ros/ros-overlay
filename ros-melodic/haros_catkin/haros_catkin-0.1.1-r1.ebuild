# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Catkin integration for HAROS \(version 3.6.0\)"
HOMEPAGE="https://github.com/git-afsantos/haros.git"
SRC_URI="https://github.com/rosin-project/${PN}-release/archive/release/melodic/${PN}/0.1.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-util/cccc
	dev-util/cppcheck
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/catkin_virtualenv
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
