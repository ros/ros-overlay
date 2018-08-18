# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS communications-related packages, including core client libraries \(rosc[...]"
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/1.13.7-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/message_filters
	ros-lunar/ros
	ros-lunar/rosbag
	ros-lunar/rosconsole
	ros-lunar/roscpp
	ros-lunar/rosgraph
	ros-lunar/rosgraph_msgs
	ros-lunar/roslaunch
	ros-lunar/roslisp
	ros-lunar/rosmaster
	ros-lunar/rosmsg
	ros-lunar/rosnode
	ros-lunar/rosout
	ros-lunar/rosparam
	ros-lunar/rospy
	ros-lunar/rosservice
	ros-lunar/rostest
	ros-lunar/rostopic
	ros-lunar/roswtf
	ros-lunar/std_srvs
	ros-lunar/topic_tools
	ros-lunar/xmlrpcpp
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
