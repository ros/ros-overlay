# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="Package to generate a ROS 2 Access Control Policy from the NoDL description[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.0.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/nodl_python
	ros-galactic/ros2cli
	ros-galactic/ros2nodl
	ros-galactic/ros2run
	ros-galactic/sros2
	test? ( ros-galactic/ament_copyright )
	test? ( ros-galactic/ament_flake8 )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_mypy )
	test? ( ros-galactic/ament_pep257 )
	test? ( ros-galactic/ament_pycodestyle )
	test? ( ros-galactic/ros_testing )
	test? ( ros-galactic/test_msgs )
	dev-python/argcomplete
	dev-python/lxml
	test? ( dev-python/pytest )
	test? ( dev-python/pytest-mock )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
