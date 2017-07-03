# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="control_msgs contains base messages and actions useful for
	controlling robot"
HOMEPAGE="http://ros.org/wiki/control_msgs"
SRC_URI="https://github.com/ros-gbp/control_msgs-release/archive/release/lunar/control_msgs/1.4.0-1.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/actionlib_msgs
	ros-lunar/geometry_msgs
	ros-lunar/message_runtime
	ros-lunar/std_msgs
	ros-lunar/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

