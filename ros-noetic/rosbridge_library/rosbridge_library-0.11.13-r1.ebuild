# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The core rosbridge package, responsible for interpreting JSON and performin[...]"
HOMEPAGE="http://ros.org/wiki/rosbridge_library"
SRC_URI="https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/noetic/${PN}/0.11.13-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/roscpp
	ros-noetic/rosgraph
	ros-noetic/rospy
	ros-noetic/rosservice
	ros-noetic/rostopic
	ros-noetic/std_msgs
	test? ( ros-noetic/actionlib_msgs )
	test? ( ros-noetic/diagnostic_msgs )
	test? ( ros-noetic/nav_msgs )
	test? ( ros-noetic/rospy_tutorials )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/sensor_msgs )
	test? ( ros-noetic/std_srvs )
	test? ( ros-noetic/stereo_msgs )
	test? ( ros-noetic/tf2_msgs )
	test? ( ros-noetic/trajectory_msgs )
	test? ( ros-noetic/visualization_msgs )
	dev-python/pymongo
	dev-python/future
	dev-python/pillow
	dev-python/pymongo
	dev-python/pillow
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
