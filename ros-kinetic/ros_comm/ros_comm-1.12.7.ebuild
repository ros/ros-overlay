# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'ROS communications-related packages, including core client libraries (roscpp, ro'"
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/ros_comm/1.12.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/message_filters
	ros-kinetic/ros
	ros-kinetic/rosbag
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/rosgraph
	ros-kinetic/rosgraph_msgs
	ros-kinetic/roslaunch
	ros-kinetic/roslisp
	ros-kinetic/rosmaster
	ros-kinetic/rosmsg
	ros-kinetic/rosnode
	ros-kinetic/rosout
	ros-kinetic/rosparam
	ros-kinetic/rospy
	ros-kinetic/rosservice
	ros-kinetic/rostest
	ros-kinetic/rostopic
	ros-kinetic/roswtf
	ros-kinetic/std_srvs
	ros-kinetic/topic_tools
	ros-kinetic/xmlrpcpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

