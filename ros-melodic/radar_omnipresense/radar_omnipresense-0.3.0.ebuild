# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This is the radar driver package developed for the omnipresense radar module."
HOMEPAGE="http://www.ros.org/wiki/radar_omnipresense"
SRC_URI="https://github.com/SCU-RSL-ROS/${PN}-release/archive/release/melodic/${PN}/0.3.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="ECL2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/message_generation
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
