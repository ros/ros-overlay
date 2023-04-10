# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="Python library for loading parameters in launch files"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/PickNikRobotics/${PN}-release/archive/release/foxy/${PN}/0.1.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_index_python
	ros-foxy/rclpy
	ros-foxy/xacro
	test? ( ros-foxy/ament_copyright )
	dev-python/pyyaml
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
