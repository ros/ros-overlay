# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="The depthai-ros package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/luxonis/${PN}-release/archive/release/humble/${PN}/2.7.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/depthai
	ros-humble/depthai_bridge
	ros-humble/depthai_descriptions
	ros-humble/depthai_examples
	ros-humble/depthai_ros_driver
	ros-humble/depthai_ros_msgs
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
