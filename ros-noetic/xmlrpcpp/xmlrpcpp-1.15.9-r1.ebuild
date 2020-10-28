# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="XmlRpc++ is a C++ implementation of the XML-RPC protocol. This version is\
[...]"
HOMEPAGE="http://xmlrpcpp.sourceforge.net"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/${PN}/1.15.9-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cpp_common
	ros-noetic/rostime
	test? ( dev-libs/boost[threads] )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
