# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A metapackage of Emacs utils for ROS.\
	Only there for simplifying the r[...]"
HOMEPAGE="http://github.com/code-iai/ros_emacs_utils"
SRC_URI="https://github.com/code-iai-release/${PN}-release/archive/release/melodic/${PN}/0.4.14-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rosemacs
	ros-melodic/roslisp_repl
	ros-melodic/slime_ros
	ros-melodic/slime_wrapper
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
