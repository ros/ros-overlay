# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Source for the WGE100 Ethernet camera: Verilog source for the\
	FPGA, Fo[...]"
HOMEPAGE="http://ros.org/wiki/wge100_camera_firmware"
SRC_URI="https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/noetic/${PN}/1.8.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/rospy
	test? ( ros-noetic/rostest )
	dev-lang/gforth
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
