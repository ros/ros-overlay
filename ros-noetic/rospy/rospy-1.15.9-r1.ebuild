# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rospy is a pure Python client library for ROS. The rospy client\
	API en[...]"
HOMEPAGE="http://wiki.ros.org/rospy"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/${PN}/1.15.9-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/genpy
	ros-noetic/roscpp
	ros-noetic/rosgraph
	ros-noetic/rosgraph_msgs
	ros-noetic/roslib
	ros-noetic/std_msgs
	dev-python/numpy
	dev-python/rospkg
	dev-python/pyyaml
	dev-python/numpy
	dev-python/rospkg
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
