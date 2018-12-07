# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Meta-package for the universal variant library."
HOMEPAGE="http://github.com/ethz-asl/ros-topic-variant"
SRC_URI="https://github.com/anybotics/${PN}-release/archive/release/kinetic/${PN}/0.1.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/variant_msgs
	ros-kinetic/variant_topic_test
	ros-kinetic/variant_topic_tools
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
