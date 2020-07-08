# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Messages and actions for rosbag recorders."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/aws-gbp/rosbag_uploader-release/archive/release/melodic/${PN}/1.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib_msgs
	ros-melodic/message_runtime
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/std_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
