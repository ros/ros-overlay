# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="CLI tools for NoDL files."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/nodl-release/archive/release/galactic/${PN}/0.3.1-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_python
	ros-galactic/nodl_python
	ros-galactic/ros2cli
	ros-galactic/ros2pkg
	ros-galactic/ros2run
	test? ( ros-galactic/ament_flake8 )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/ament_mypy )
	dev-python/argcomplete
	test? ( dev-python/pytest )
	test? ( dev-python/pytest-mock )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
