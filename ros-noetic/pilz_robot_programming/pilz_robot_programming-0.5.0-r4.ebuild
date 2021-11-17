# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="An Easy to use API to execute standard industrial robot commands like Ptp, [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/noetic/${PN}/0.5.0-4.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/moveit_commander
	ros-noetic/pilz_industrial_motion_planner
	ros-noetic/pilz_msgs
	ros-noetic/rospy
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	ros-noetic/tf_conversions
	test? ( ros-noetic/code_coverage )
	test? ( ros-noetic/pilz_industrial_motion_testutils )
	test? ( ros-noetic/prbt_hardware_support )
	test? ( ros-noetic/prbt_moveit_config )
	test? ( ros-noetic/prbt_pg70_support )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
	dev-python/psutil
	test? ( dev-python/coverage )
	test? ( dev-python/docopt )
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslint
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
