# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="The iot_bridge provides a bi-directional bridge between ROS and the OpenHAB Home"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/iot_bridge-release/archive/release/lunar/iot_bridge/0.9.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/diagnostic_msgs
	ros-lunar/rospy
	ros-lunar/rostopic
	dev-python/requests
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

