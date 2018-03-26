# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS packages for the ROBOTIS OP3 \(meta package\).\
	This meta package p[...]"
HOMEPAGE="http://wiki.ros.org/robotis_op3_common"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-Common-release/archive/release/kinetic/${PN}/0.1.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/op3_description
	ros-kinetic/op3_gazebo
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
