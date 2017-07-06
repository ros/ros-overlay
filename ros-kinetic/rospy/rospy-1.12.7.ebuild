# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="NONE"
HOMEPAGE="http://ros.org/wiki/rospy"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rospy/1.12.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/genpy
	ros-kinetic/roscpp
	ros-kinetic/rosgraph
	ros-kinetic/rosgraph_msgs
	ros-kinetic/roslib
	ros-kinetic/std_msgs
	dev-python/numpy
	dev-python/rospkg
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

