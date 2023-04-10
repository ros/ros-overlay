# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Allows to store poses during teach-in."
HOMEPAGE="https://github.com/PilzDE/pilz_industrial_motion/issues"
SRC_URI="https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/${PN}/0.4.14-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-3.0-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/rospy
	ros-melodic/tf2_ros
	test? ( ros-melodic/code_coverage )
	test? ( ros-melodic/ros_pytest )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/visualization_msgs )
	dev-libs/libyaml
	test? ( dev-python/mock )
	test? ( dev-python/pytest-cov )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslint
	ros-melodic/std_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
