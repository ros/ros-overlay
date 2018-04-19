# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Source for the WGE100 Ethernet camera: Verilog source for the\
	FPGA, Fo[...]"
HOMEPAGE="http://ros.org/wiki/wge100_camera_firmware"
SRC_URI="https://github.com/ros-drivers-gbp/wge100_driver-release/archive/release/kinetic/${PN}/1.8.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/rospy
	test? ( ros-kinetic/rostest )
	dev-lang/gforth
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
