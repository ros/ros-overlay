# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="MassRobotics AMR Interop Sender"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/inorbit-ai/ros_amr_interop-release/archive/release/galactic/${PN}/1.1.1-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="3-Clause-BSD-License"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/rclpy
	ros-galactic/tf2_kdl
	test? ( ros-galactic/ament_copyright )
	test? ( ros-galactic/ament_flake8 )
	test? ( ros-galactic/ament_pep257 )
	test? ( ros-galactic/common_interfaces )
	dev-python/python_orocos_kdl
	dev-python/websockets
	test? ( dev-python/jsonschema )
	test? ( dev-python/mock )
	test? ( dev-python/pep8 )
	test? ( dev-python/pytest )
	test? ( dev-python/pytest-mock )
	test? ( dev-python/pyyaml )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
