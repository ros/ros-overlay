# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Meta-package for the universal variant library.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ethz-asl/variant-release/archive/release/indigo/variant/0.1.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/variant_msgs
	ros-indigo/variant_topic_test
	ros-indigo/variant_topic_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

