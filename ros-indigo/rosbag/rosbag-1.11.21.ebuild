# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This is a set of tools for recording from and playing back to ROS\
	topi[...]"
HOMEPAGE="http://ros.org/wiki/rosbag"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/rosbag/1.11.21-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/genmsg
	ros-indigo/genpy
	ros-indigo/rosbag_storage
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/rospy
	ros-indigo/topic_tools
	ros-indigo/xmlrpcpp
	dev-libs/boost
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cpp_common
	ros-indigo/roscpp_serialization
	dev-python/pillow
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
