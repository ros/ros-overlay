# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Meta-package for the earth_rover_piksi repository."
HOMEPAGE="http://wiki.ros.org/earth_rover_piksi"
SRC_URI="https://github.com/earthrover/${PN}-release/archive/release/kinetic/${PN}/1.8.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/piksi_multi_rtk
	ros-kinetic/piksi_rtk_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
