# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="HyQ-robot specific functions for visualization in the  XPP Motion Framework[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_hyq/1.0.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/roscpp
	ros-kinetic/xpp_vis
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
