# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The mongodb_store_msgs package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/strands-project-releases/mongodb_store/archive/release/indigo/mongodb_store_msgs/0.3.6-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/message_generation
	ros-indigo/message_runtime
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
