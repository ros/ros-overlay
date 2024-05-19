# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The pal_statistics package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/${PN}-release/archive/release/noetic/${PN}/1.5.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/pal_statistics_msgs
	ros-noetic/rosbag
	ros-noetic/roscpp
	ros-noetic/rospy
	test? ( ros-noetic/rostest )
	dev-libs/boost[python]
	dev-python/future
	dev-python/future
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
