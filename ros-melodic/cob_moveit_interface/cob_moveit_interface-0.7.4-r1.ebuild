# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="cob_moveit_interface"
HOMEPAGE="http://ros.org/wiki/cob_manipulation/"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/${PN}/0.7.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_script_server
	ros-melodic/geometry_msgs
	ros-melodic/moveit_commander
	ros-melodic/rospy
	ros-melodic/tf
	dev-python/six
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
