# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This is a set of tools for recording from and playing back ROS\
	message[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/${PN}/1.14.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cpp_common
	ros-melodic/pluginlib
	ros-melodic/roscpp_serialization
	ros-melodic/roscpp_traits
	ros-melodic/roslz4
	ros-melodic/rostime
	dev-libs/boost[python]
	app-arch/bzip2
	dev-libs/console_bridge
	app-crypt/gpgme
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
	ros-melodic/std_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
