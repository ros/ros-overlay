# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rosee_msg package"
HOMEPAGE="https://advrhumanoids.github.io/ROSEndEffectorDocs/"
SRC_URI="https://github.com/ADVRHumanoids/${PN}-release/archive/release/melodic/${PN}/1.0.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib_msgs
	ros-melodic/message_generation
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/rospy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/geometry_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
