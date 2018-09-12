# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The core rosbridge package, repsonsible for interpreting JSON andperforming[...]"
HOMEPAGE="http://ros.org/wiki/rosbridge_library"
SRC_URI="https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/lunar/${PN}/0.8.4-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/message_runtime
	ros-lunar/roscpp
	ros-lunar/rosgraph
	ros-lunar/rospy
	ros-lunar/rosservice
	ros-lunar/rostopic
	ros-lunar/std_msgs
	test? ( ros-lunar/actionlib_msgs )
	test? ( ros-lunar/diagnostic_msgs )
	test? ( ros-lunar/nav_msgs )
	test? ( ros-lunar/rospy_tutorials )
	test? ( ros-lunar/rostest )
	test? ( ros-lunar/sensor_msgs )
	test? ( ros-lunar/std_srvs )
	test? ( ros-lunar/stereo_msgs )
	test? ( ros-lunar/tf2_msgs )
	test? ( ros-lunar/trajectory_msgs )
	test? ( ros-lunar/visualization_msgs )
	dev-python/bson
	dev-python/pillow
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
