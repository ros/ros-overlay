# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="app_manager"
HOMEPAGE="http://ros.org/wiki/app_manager"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/1.3.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/message_runtime
	ros-melodic/rosgraph
	ros-melodic/roslaunch
	ros-melodic/rospack
	ros-melodic/rospy
	ros-melodic/rosunit
	ros-melodic/std_srvs
	test? ( ros-melodic/rospy_tutorials )
	test? ( ros-melodic/rosservice )
	test? ( ros-melodic/rostest )
	test? ( dev-util/rosdep )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
