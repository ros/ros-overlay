# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="Command line tools for managing SROS2 keys"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/ardent/${PN}/0.4.1-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/ros2cli
	test? ( ros-ardent/ament_copyright )
	test? ( ros-ardent/ament_flake8 )
	test? ( ros-ardent/ament_pep257 )
	dev-libs/openssl
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
