# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A metapackage of Emacs utils for ROS.\
	Only there for simplifying the r[...]"
HOMEPAGE="http://github.com/code-iai/ros_emacs_utils"
SRC_URI="https://github.com/code-iai-release/${PN}-release/archive/release/lunar/${PN}/0.4.12-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/rosemacs
	ros-lunar/roslisp_repl
	ros-lunar/slime_ros
	ros-lunar/slime_wrapper
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
