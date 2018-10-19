# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Generalized client side source for rosserial."
HOMEPAGE="http://ros.org/wiki/rosserial_client"
SRC_URI="https://github.com/ros-gbp/rosserial-release/archive/release/melodic/${PN}/0.8.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/rosbash
	ros-melodic/rospy
	ros-melodic/rosserial_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	test? ( ros-melodic/rosserial_msgs )
	test? ( ros-melodic/rosunit )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
