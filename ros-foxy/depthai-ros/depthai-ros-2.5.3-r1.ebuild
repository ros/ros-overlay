# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The depthai-ros package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/luxonis/${PN}-release/archive/release/foxy/${PN}/2.5.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/depthai
	ros-foxy/depthai_bridge
	ros-foxy/depthai_examples
	ros-foxy/depthai_ros_msgs
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
