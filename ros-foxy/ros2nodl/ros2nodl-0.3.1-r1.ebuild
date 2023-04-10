# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="CLI tools for NoDL files."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/nodl-release/archive/release/foxy/${PN}/0.3.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_index_python
	ros-foxy/nodl_python
	ros-foxy/ros2cli
	ros-foxy/ros2pkg
	ros-foxy/ros2run
	test? ( ros-foxy/ament_flake8 )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/ament_mypy )
	dev-python/argcomplete
	test? ( dev-python/pytest )
	test? ( dev-python/pytest-mock )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
