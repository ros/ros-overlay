# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides a script that launches Emacs with Slime \(the\
	Su[...]"
HOMEPAGE="https://github.com/code-iai/ros_emacs_utils"
SRC_URI="https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/melodic/${PN}/0.4.14-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="public_domain"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rosemacs
	ros-melodic/roslisp
	ros-melodic/slime_ros
	ros-melodic/slime_wrapper
	dev-lisp/sbcl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
