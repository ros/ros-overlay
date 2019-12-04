# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An Easy to use API to execute standard industrial robot commands like Ptp, [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/${PN}/0.4.10-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/moveit_commander
	ros-melodic/pilz_msgs
	ros-melodic/pilz_trajectory_generation
	ros-melodic/rospy
	ros-melodic/tf
	ros-melodic/tf_conversions
	test? ( ros-melodic/pilz_industrial_motion_testutils )
	test? ( ros-melodic/prbt_moveit_config )
	test? ( ros-melodic/prbt_pg70_support )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	dev-python/psutil
	test? ( dev-python/coverage )
	test? ( dev-python/docopt )
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
