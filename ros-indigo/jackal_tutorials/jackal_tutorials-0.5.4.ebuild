# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Jackal\'s tutorials."
HOMEPAGE="http://wiki.ros.org/jackal_msgs"
SRC_URI="https://github.com/clearpath-gbp/jackal-release/archive/release/indigo/${PN}/0.5.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rosdoc_lite
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
