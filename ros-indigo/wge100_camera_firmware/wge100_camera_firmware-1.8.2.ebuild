# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Source for the WGE100 Ethernet camera: Verilog source for the
	FPGA, Forth so'"
HOMEPAGE="http://ros.org/wiki/wge100_camera_firmware"
SRC_URI="https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/indigo/wge100_camera_firmware/1.8.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rospy
	dev-lang/gforth
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

