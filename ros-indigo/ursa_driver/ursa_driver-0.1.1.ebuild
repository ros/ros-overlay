# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'ros package and c++ library to interface with the URSAII MCA'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mikehosmar/ursa_driver-release/archive/release/indigo/ursa_driver/0.1.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/serial
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

