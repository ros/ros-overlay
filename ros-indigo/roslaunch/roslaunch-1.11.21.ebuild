# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="att#text"
HOMEPAGE="http://ros.org/wiki/roslaunch"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/indigo/roslaunch/1.11.21-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosclean
	ros-indigo/rosgraph_msgs
	ros-indigo/roslib
	ros-indigo/rosmaster
	ros-indigo/rosout
	ros-indigo/rosparam
	ros-indigo/rosunit
	dev-python/paramiko
	dev-python/rospkg
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
