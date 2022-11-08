# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="The trace command for ROS 2 command line tools."
HOMEPAGE="https://index.ros.org/p/ros2trace/"
SRC_URI="https://github.com/ros2-gbp/ros2_tracing-release/archive/release/galactic/${PN}/2.3.0-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ros2cli
	ros-galactic/tracetools_trace
	test? ( ros-galactic/ament_copyright )
	test? ( ros-galactic/ament_flake8 )
	test? ( ros-galactic/ament_mypy )
	test? ( ros-galactic/ament_pep257 )
	test? ( ros-galactic/ament_xmllint )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
