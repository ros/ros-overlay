# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The quaternion_operation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/OUXT-Polaris/${PN}-release/archive/release/kinetic/${PN}/0.0.1-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Aoache v2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/roscpp
	ros-kinetic/rostest
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
