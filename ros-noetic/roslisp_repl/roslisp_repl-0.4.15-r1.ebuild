# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="This package provides a script that launches Emacs with Slime \(the\
	Su[...]"
HOMEPAGE="https://github.com/code-iai/ros_emacs_utils"
SRC_URI="https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/${PN}/0.4.15-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="public_domain"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/rosemacs
	ros-noetic/roslisp
	ros-noetic/slime_ros
	ros-noetic/slime_wrapper
	dev-lisp/sbcl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
