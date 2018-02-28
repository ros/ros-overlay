# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This is a set of tools for recording from and playing back to ROS\
	topi[...]"
HOMEPAGE="http://ros.org/wiki/rosbag"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/${PN}/1.12.13-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/genmsg
	ros-kinetic/genpy
	ros-kinetic/rosbag_storage
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/rospy
	ros-kinetic/std_srvs
	ros-kinetic/topic_tools
	ros-kinetic/xmlrpcpp
	dev-libs/boost
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cpp_common
	ros-kinetic/roscpp_serialization
	dev-python/pillow
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
