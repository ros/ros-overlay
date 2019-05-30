# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="Runtime utilities for working with generated ROS interfaces in Python."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_python-release/archive/release/dashing/${PN}/0.7.5-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/rosidl_parser
	test? ( ros-dashing/ament_copyright )
	test? ( ros-dashing/ament_flake8 )
	test? ( ros-dashing/ament_pep257 )
	test? ( ros-dashing/ament_xmllint )
	test? ( ros-dashing/test_msgs )
	dev-python/numpy
	dev-python/pyyaml
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
