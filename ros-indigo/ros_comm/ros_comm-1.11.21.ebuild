# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS communicationsrelated packages, including core client libraries roscpp, ro"
HOMEPAGE="http://www.ros.org/wiki/ros_comm"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/ros_comm/1.11.21-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/message_filters
	ros-indigo/ros
	ros-indigo/rosbag
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/rosgraph
	ros-indigo/rosgraph_msgs
	ros-indigo/roslaunch
	ros-indigo/roslisp
	ros-indigo/rosmaster
	ros-indigo/rosmsg
	ros-indigo/rosnode
	ros-indigo/rosout
	ros-indigo/rosparam
	ros-indigo/rospy
	ros-indigo/rosservice
	ros-indigo/rostest
	ros-indigo/rostopic
	ros-indigo/roswtf
	ros-indigo/std_srvs
	ros-indigo/topic_tools
	ros-indigo/xmlrpcpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

