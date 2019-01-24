# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="JSON transport for ROS"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/${PN}-release/archive/release/melodic/${PN}/0.0.3-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/json_msgs
	ros-melodic/roscpp
	test? ( ros-melodic/roslint )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	dev-python/msgpack
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
