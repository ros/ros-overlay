# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This is a set of tools for recording from and playing back to ROS\
	topics.  I"
HOMEPAGE="http://ros.org/wiki/rosbag"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rosbag/1.13.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/genmsg
	ros-lunar/genpy
	ros-lunar/rosbag_storage
	ros-lunar/rosconsole
	ros-lunar/roscpp
	ros-lunar/roslib
	ros-lunar/rospy
	ros-lunar/std_srvs
	ros-lunar/topic_tools
	ros-lunar/xmlrpcpp
	dev-libs/boost
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cpp_common
	ros-lunar/roscpp_serialization
	dev-python/pillow
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

