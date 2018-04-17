# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS wrapper for slime"
HOMEPAGE="http://common-lisp.net/project/slime"
SRC_URI="https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/indigo/${PN}/0.4.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="public_domain"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/emacs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
