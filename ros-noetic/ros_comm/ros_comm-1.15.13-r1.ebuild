# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS communications-related packages, including core client libraries \(rosc[...]"
HOMEPAGE="http://wiki.ros.org/ros_comm"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/1.15.13-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/message_filters
	ros-noetic/ros
	ros-noetic/rosbag
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/rosgraph
	ros-noetic/rosgraph_msgs
	ros-noetic/roslaunch
	ros-noetic/roslisp
	ros-noetic/rosmaster
	ros-noetic/rosmsg
	ros-noetic/rosnode
	ros-noetic/rosout
	ros-noetic/rosparam
	ros-noetic/rospy
	ros-noetic/rosservice
	ros-noetic/rostest
	ros-noetic/rostopic
	ros-noetic/roswtf
	ros-noetic/std_srvs
	ros-noetic/topic_tools
	ros-noetic/xmlrpcpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
