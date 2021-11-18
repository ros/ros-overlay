# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="Runtime utilities for working with generated ROS interfaces in Python."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/0.9.1-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/rosidl_parser
	test? ( ros-galactic/ament_copyright )
	test? ( ros-galactic/ament_flake8 )
	test? ( ros-galactic/ament_pep257 )
	test? ( ros-galactic/ament_xmllint )
	test? ( ros-galactic/std_msgs )
	test? ( ros-galactic/std_srvs )
	test? ( ros-galactic/test_msgs )
	dev-python/numpy
	dev-python/pyyaml
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
