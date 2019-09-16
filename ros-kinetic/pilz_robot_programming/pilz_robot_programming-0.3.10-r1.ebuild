# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An Easy to use API to execute standard industrial robot commands like Ptp, [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/${PN}/0.3.10-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/moveit_commander
	ros-kinetic/pilz_msgs
	ros-kinetic/pilz_trajectory_generation
	ros-kinetic/rospy
	ros-kinetic/tf
	ros-kinetic/tf_conversions
	test? ( ros-kinetic/pilz_industrial_motion_testutils )
	test? ( ros-kinetic/prbt_moveit_config )
	test? ( ros-kinetic/prbt_pg70_support )
	test? ( ros-kinetic/rostest )
	dev-python/psutil
	test? ( dev-python/coverage )
	test? ( dev-python/docopt )
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
