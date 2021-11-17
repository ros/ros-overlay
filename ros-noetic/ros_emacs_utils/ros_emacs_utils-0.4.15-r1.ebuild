# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A metapackage of Emacs utils for ROS.\
	Only there for simplifying the r[...]"
HOMEPAGE="http://github.com/code-iai/ros_emacs_utils"
SRC_URI="https://github.com/code-iai-release/${PN}-release/archive/release/noetic/${PN}/0.4.15-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/rosemacs
	ros-noetic/roslisp_repl
	ros-noetic/slime_ros
	ros-noetic/slime_wrapper
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
