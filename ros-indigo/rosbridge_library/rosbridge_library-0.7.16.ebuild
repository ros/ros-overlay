# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The core rosbridge package, repsonsible for interpreting JSON andperforming[...]"
HOMEPAGE="http://ros.org/wiki/rosbridge_library"
SRC_URI="https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/indigo/${PN}/0.7.16-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/rosgraph
	ros-indigo/rospy
	ros-indigo/rosservice
	ros-indigo/rostopic
	ros-indigo/std_msgs
	test? ( ros-indigo/actionlib_msgs )
	test? ( ros-indigo/diagnostic_msgs )
	test? ( ros-indigo/nav_msgs )
	test? ( ros-indigo/rospy_tutorials )
	test? ( ros-indigo/sensor_msgs )
	test? ( ros-indigo/std_srvs )
	test? ( ros-indigo/stereo_msgs )
	test? ( ros-indigo/tf2_msgs )
	test? ( ros-indigo/trajectory_msgs )
	test? ( ros-indigo/visualization_msgs )
	dev-python/bson
	dev-python/pillow
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
