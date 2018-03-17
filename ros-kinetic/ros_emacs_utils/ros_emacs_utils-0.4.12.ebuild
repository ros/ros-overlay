# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A metapackage of Emacs utils for ROS.\
	Only there for simplifying the r[...]"
HOMEPAGE="http://github.com/code-iai/ros_emacs_utils"
SRC_URI="https://github.com/code-iai-release/${PN}-release/archive/release/kinetic/${PN}/0.4.12-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rosemacs
	ros-kinetic/roslisp_repl
	ros-kinetic/slime_ros
	ros-kinetic/slime_wrapper
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
