# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A runtime message handler for ROS.\
	Allows subscription, publishing, ca[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/StefanFabian/${PN}-release/archive/release/noetic/${PN}/0.9.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/roscpp
	ros-noetic/roslib
	test? ( ros-noetic/geometry_msgs )
	test? ( ros-noetic/ros_babel_fish_test_msgs )
	test? ( ros-noetic/rosapi )
	test? ( ros-noetic/roscpp_tutorials )
	test? ( ros-noetic/rosgraph_msgs )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/std_msgs )
	test? ( ros-noetic/std_srvs )
	test? ( ros-noetic/visualization_msgs )
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-libs/openssl
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
