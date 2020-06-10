# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="roslaunch is a tool for easily launching multiple ROS <a href=\"http://ros.[...]"
HOMEPAGE="http://wiki.ros.org/roslaunch"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/${PN}/1.14.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/rosclean
	ros-melodic/rosgraph_msgs
	ros-melodic/roslib
	ros-melodic/rosmaster
	ros-melodic/rosout
	ros-melodic/rosparam
	ros-melodic/rosunit
	test? ( ros-melodic/rosbuild )
	dev-python/paramiko
	dev-python/rospkg
	dev-python/pyyaml
	dev-python/paramiko
	dev-python/rospkg
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
