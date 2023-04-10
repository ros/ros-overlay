# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Topic tools for treating messages as variant types."
HOMEPAGE="http://github.com/anybotics/variant"
SRC_URI="https://github.com/anybotics/variant-release/archive/release/melodic/${PN}/0.1.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GNU-Lesser-General-Public-License-LGPL-"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/variant_msgs
	test? ( ros-melodic/geometry_msgs )
	test? ( ros-melodic/std_msgs )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
