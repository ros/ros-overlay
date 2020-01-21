# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="tf2 is the second generation of the transform library, which lets\
	the [...]"
HOMEPAGE="http://www.ros.org/wiki/tf2"
SRC_URI="https://github.com/ros-gbp/geometry2-release/archive/release/melodic/${PN}/0.6.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/rostime
	ros-melodic/tf2_msgs
	dev-libs/console_bridge
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
