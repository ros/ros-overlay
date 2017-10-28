# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The URDF file for a quadrotor to be used with the xpp packages and a \
	[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/leggedrobotics/xpp-release/archive/release/lunar/xpp_quadrotor/1.0.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/roscpp
	ros-lunar/xpp_vis
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
