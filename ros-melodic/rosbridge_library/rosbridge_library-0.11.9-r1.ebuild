# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The core rosbridge package, responsible for interpreting JSON and performin[...]"
HOMEPAGE="http://ros.org/wiki/rosbridge_library"
SRC_URI="https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/${PN}/0.11.9-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/rosgraph
	ros-melodic/rospy
	ros-melodic/rosservice
	ros-melodic/rostopic
	ros-melodic/std_msgs
	test? ( ros-melodic/actionlib_msgs )
	test? ( ros-melodic/diagnostic_msgs )
	test? ( ros-melodic/nav_msgs )
	test? ( ros-melodic/rospy_tutorials )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/sensor_msgs )
	test? ( ros-melodic/std_srvs )
	test? ( ros-melodic/stereo_msgs )
	test? ( ros-melodic/tf2_msgs )
	test? ( ros-melodic/trajectory_msgs )
	test? ( ros-melodic/visualization_msgs )
	dev-python/pymongo
	dev-python/pillow
	dev-python/pymongo
	dev-python/pillow
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
