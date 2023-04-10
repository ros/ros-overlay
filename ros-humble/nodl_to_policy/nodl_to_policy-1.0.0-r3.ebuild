# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-python

DESCRIPTION="Package to generate a ROS 2 Access Control Policy from the NoDL description[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/1.0.0-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/nodl_python
	ros-humble/ros2cli
	ros-humble/ros2nodl
	ros-humble/ros2run
	ros-humble/sros2
	test? ( ros-humble/ament_copyright )
	test? ( ros-humble/ament_flake8 )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_mypy )
	test? ( ros-humble/ament_pep257 )
	test? ( ros-humble/ament_pycodestyle )
	test? ( ros-humble/ros_testing )
	test? ( ros-humble/test_msgs )
	dev-python/argcomplete
	dev-python/lxml
	test? ( dev-python/pytest )
	test? ( dev-python/pytest-mock )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
