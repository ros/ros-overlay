# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rosbag_snapshot package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/1.0.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/rosbag
	ros-kinetic/rosbag_snapshot_msgs
	ros-kinetic/roscpp
	ros-kinetic/rosgraph_msgs
	ros-kinetic/std_srvs
	ros-kinetic/topic_tools
	test? ( ros-kinetic/roslint )
	test? ( ros-kinetic/rospy )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rostopic )
	test? ( ros-kinetic/std_msgs )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
