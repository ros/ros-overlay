# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Jackal\'s tutorials."
HOMEPAGE="http://wiki.ros.org/jackal_msgs"
SRC_URI="https://github.com/clearpath-gbp/jackal-release/archive/release/kinetic/${PN}/0.6.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rosdoc_lite
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
