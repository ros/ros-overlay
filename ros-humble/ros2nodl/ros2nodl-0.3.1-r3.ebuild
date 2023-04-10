# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-python

DESCRIPTION="CLI tools for NoDL files."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/nodl-release/archive/release/humble/${PN}/0.3.1-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_python
	ros-humble/nodl_python
	ros-humble/ros2cli
	ros-humble/ros2pkg
	ros-humble/ros2run
	test? ( ros-humble/ament_flake8 )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/ament_mypy )
	dev-python/argcomplete
	test? ( dev-python/pytest )
	test? ( dev-python/pytest-mock )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
