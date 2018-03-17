# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Extensions for slime to assist in working with ROS packages"
HOMEPAGE="https://github.com/code-iai/ros_emacs_utils"
SRC_URI="https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/lunar/${PN}/0.4.12-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="public_domain"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/rosemacs
	ros-lunar/roslisp
	ros-lunar/slime_wrapper
	dev-lisp/sbcl
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
