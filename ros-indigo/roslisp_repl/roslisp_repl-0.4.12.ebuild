# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides a script that launches Emacs with Slime \(the\
	Su[...]"
HOMEPAGE="https://github.com/code-iai/ros_emacs_utils"
SRC_URI="https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/indigo/${PN}/0.4.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="public_domain"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosemacs
	ros-indigo/roslisp
	ros-indigo/slime_ros
	ros-indigo/slime_wrapper
	dev-lisp/sbcl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
