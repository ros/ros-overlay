# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The core rosbridge package, repsonsible for interpreting JSON andperforming[...]"
HOMEPAGE="http://ros.org/wiki/rosbridge_library"
SRC_URI="https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/${PN}/0.11.3-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
	ros-kinetic/rosgraph
	ros-kinetic/rospy
	ros-kinetic/rosservice
	ros-kinetic/rostopic
	ros-kinetic/std_msgs
	test? ( ros-kinetic/actionlib_msgs )
	test? ( ros-kinetic/diagnostic_msgs )
	test? ( ros-kinetic/nav_msgs )
	test? ( ros-kinetic/rospy_tutorials )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/sensor_msgs )
	test? ( ros-kinetic/std_srvs )
	test? ( ros-kinetic/stereo_msgs )
	test? ( ros-kinetic/tf2_msgs )
	test? ( ros-kinetic/trajectory_msgs )
	test? ( ros-kinetic/visualization_msgs )
	dev-python/pymongo
	dev-python/pillow
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
