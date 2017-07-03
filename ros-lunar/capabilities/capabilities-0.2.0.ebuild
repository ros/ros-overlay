# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="Package which implements capabilities, including code to parse capability interf"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/capabilities-release/archive/release/lunar/capabilities/0.2.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/bondpy
	ros-lunar/message_runtime
	ros-lunar/nodelet
	ros-lunar/roslaunch
	ros-lunar/rospy
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
	ros-lunar/rostest
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

