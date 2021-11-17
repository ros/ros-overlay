# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="app_manager"
HOMEPAGE="http://ros.org/wiki/app_manager"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/1.3.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/message_runtime
	ros-noetic/rosgraph
	ros-noetic/roslaunch
	ros-noetic/rospack
	ros-noetic/rospy
	ros-noetic/rosunit
	ros-noetic/std_srvs
	test? ( ros-noetic/rospy_tutorials )
	test? ( ros-noetic/rosservice )
	test? ( ros-noetic/rostest )
	test? ( dev-util/rosdep )
	test? ( dev-util/rosdep )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
