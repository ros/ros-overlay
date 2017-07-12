# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The rosprofiler package provides the rosprofiler and rosgrapher tools	  The"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rosprofiler-release/archive/release/indigo/rosprofiler/0.1.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ros_statistics_msgs
	ros-indigo/ros_topology_msgs
	ros-indigo/rosgraph
	ros-indigo/rosnode
	ros-indigo/rospy
	dev-python/psutil
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

