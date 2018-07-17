# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Visualization of motion-plans for legged robots. It draws support areas, \
[...]"
HOMEPAGE="http://github.com/leggedrobotics/xpp"
SRC_URI="https://github.com/leggedrobotics/${PN}-release/archive/release/lunar/${PN}/1.0.9-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/xpp_examples
	ros-lunar/xpp_hyq
	ros-lunar/xpp_msgs
	ros-lunar/xpp_quadrotor
	ros-lunar/xpp_states
	ros-lunar/xpp_vis
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
