# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="roslaunch is a tool for easily launching multiple ROS <a href=\"http://ros.[...]"
HOMEPAGE="http://wiki.ros.org/roslaunch"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/${PN}/1.16.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/rosclean
	ros-noetic/rosgraph_msgs
	ros-noetic/roslib
	ros-noetic/rosmaster
	ros-noetic/rosout
	ros-noetic/rosparam
	ros-noetic/rosunit
	test? ( ros-noetic/rosbuild )
	dev-python/paramiko
	dev-python/rospkg
	dev-python/pyyaml
	dev-python/paramiko
	dev-python/rospkg
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
