# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The rosbag_snapshot package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/1.0.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/rosbag
	ros-noetic/rosbag_snapshot_msgs
	ros-noetic/roscpp
	ros-noetic/rosgraph_msgs
	ros-noetic/std_srvs
	ros-noetic/topic_tools
	test? ( ros-noetic/roslint )
	test? ( ros-noetic/rospy )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rostopic )
	test? ( ros-noetic/std_msgs )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
