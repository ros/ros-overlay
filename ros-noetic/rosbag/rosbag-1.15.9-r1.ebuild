# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="This is a set of tools for recording from and playing back to ROS\
	topi[...]"
HOMEPAGE="http://wiki.ros.org/rosbag"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/${PN}/1.15.9-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/genmsg
	ros-noetic/genpy
	ros-noetic/rosbag_storage
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/roslib
	ros-noetic/rospy
	ros-noetic/std_srvs
	ros-noetic/topic_tools
	ros-noetic/xmlrpcpp
	dev-libs/boost
	dev-libs/boost[python]
	dev-libs/boost
	dev-libs/boost
	dev-libs/boost[threads]
	dev-python/python-gnupg
	dev-python/pycryptodome
	dev-python/rospkg
	dev-python/python-gnupg
	dev-python/pycryptodome
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cpp_common
	ros-noetic/roscpp_serialization
	dev-python/pillow
	dev-python/pillow
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_prepare() {
	cd ${P}
	EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
	EPATCH_FORCE="yes" epatch
	ros-cmake_src_prepare
}

