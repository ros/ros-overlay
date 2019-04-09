# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The URDF file for a quadrotor to be used with the xpp packages and a \
	[...]"
HOMEPAGE="http://github.com/leggedrobotics/xpp"
SRC_URI="https://github.com/leggedrobotics/xpp-release/archive/release/indigo/${PN}/1.0.10-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/roscpp
	ros-indigo/xacro
	ros-indigo/xpp_vis
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
