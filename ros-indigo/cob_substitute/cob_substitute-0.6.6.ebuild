# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="cob_substitute"
HOMEPAGE="http://ros.org/wiki/cob_substitute"
SRC_URI="https://github.com/ipa320/cob_substitute-release/archive/release/indigo/cob_substitute/0.6.6-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_docker_control
	ros-indigo/cob_reflector_referencing
	ros-indigo/cob_safety_controller
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
