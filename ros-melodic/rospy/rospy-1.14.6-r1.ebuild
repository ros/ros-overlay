# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="rospy is a pure Python client library for ROS. The rospy client\
	API en[...]"
HOMEPAGE="http://wiki.ros.org/rospy"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/${PN}/1.14.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/genpy
	ros-melodic/roscpp
	ros-melodic/rosgraph
	ros-melodic/rosgraph_msgs
	ros-melodic/roslib
	ros-melodic/std_msgs
	dev-python/numpy
	dev-python/rospkg
	dev-python/pyyaml
	dev-python/numpy
	dev-python/rospkg
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
