# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="C++ library for getting full message definition or MD5 sum given message ty[...]"
HOMEPAGE="https://github.com/ctu-vras/rosmsg_cpp"
SRC_URI="https://github.com/ctu-vras/${PN}-release/archive/release/noetic/${PN}/1.0.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cpp_common
	ros-noetic/message_runtime
	ros-noetic/roslib
	test? ( ros-noetic/geometry_msgs )
	test? ( ros-noetic/rosunit )
	dev-lang/python
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/ros_environment
	=dev-lang/python-3*
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
