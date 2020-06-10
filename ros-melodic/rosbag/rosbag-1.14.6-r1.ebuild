# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This is a set of tools for recording from and playing back to ROS\
	topi[...]"
HOMEPAGE="http://wiki.ros.org/rosbag"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/${PN}/1.14.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/genmsg
	ros-melodic/genpy
	ros-melodic/rosbag_storage
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/rospy
	ros-melodic/std_srvs
	ros-melodic/topic_tools
	ros-melodic/xmlrpcpp
	dev-libs/boost[python]
	dev-python/python-gnupg
	dev-python/pycryptodome
	dev-python/rospkg
	dev-python/python-gnupg
	dev-python/pycryptodome
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cpp_common
	ros-melodic/roscpp_serialization
	dev-python/pillow
	dev-python/pillow
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
