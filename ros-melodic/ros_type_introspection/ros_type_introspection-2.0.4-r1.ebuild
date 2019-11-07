# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ros_type_introspection package allows the user to parse and deserialize[...]"
HOMEPAGE="http://www.ros.org/wiki/ros_type_introspection"
SRC_URI="https://github.com/facontidavide/${PN}-release/archive/release/melodic/${PN}/2.0.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/roscpp
	ros-melodic/roscpp_serialization
	ros-melodic/rostime
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
