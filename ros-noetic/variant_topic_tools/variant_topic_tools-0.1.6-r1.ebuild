# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Topic tools for treating messages as variant types."
HOMEPAGE="http://github.com/anybotics/variant"
SRC_URI="https://github.com/anybotics/variant-release/archive/release/noetic/${PN}/0.1.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/roscpp
	ros-noetic/roslib
	ros-noetic/variant_msgs
	test? ( ros-noetic/geometry_msgs )
	test? ( ros-noetic/std_msgs )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
