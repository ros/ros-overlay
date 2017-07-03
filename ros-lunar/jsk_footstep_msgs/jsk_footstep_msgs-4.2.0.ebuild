# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="jsk_footstep_msgs"
HOMEPAGE="http://ros.org/wiki/jsk_footstep_msgs"
SRC_URI="https://github.com/tork-a/jsk_common_msgs-release/archive/release/lunar/jsk_footstep_msgs/4.2.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib_msgs
	ros-lunar/geometry_msgs
	ros-lunar/message_runtime
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

