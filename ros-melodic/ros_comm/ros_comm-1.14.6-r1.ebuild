# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS communications-related packages, including core client libraries \(rosc[...]"
HOMEPAGE="http://wiki.ros.org/ros_comm"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/1.14.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/message_filters
	ros-melodic/ros
	ros-melodic/rosbag
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/rosgraph
	ros-melodic/rosgraph_msgs
	ros-melodic/roslaunch
	ros-melodic/roslisp
	ros-melodic/rosmaster
	ros-melodic/rosmsg
	ros-melodic/rosnode
	ros-melodic/rosout
	ros-melodic/rosparam
	ros-melodic/rospy
	ros-melodic/rosservice
	ros-melodic/rostest
	ros-melodic/rostopic
	ros-melodic/roswtf
	ros-melodic/std_srvs
	ros-melodic/topic_tools
	ros-melodic/xmlrpcpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
