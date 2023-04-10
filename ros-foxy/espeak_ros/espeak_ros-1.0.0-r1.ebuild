# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.com/espeak-ros2/espeak-ros2-release/repository/archive.tar.gz?ref=release/foxy/${PN}/1.0.0-1 -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/espeak_interfaces
	test? ( ros-foxy/ament_copyright )
	test? ( ros-foxy/ament_flake8 )
	test? ( ros-foxy/ament_mypy )
	test? ( ros-foxy/ament_pep257 )
	app-accessibility/espeak
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
