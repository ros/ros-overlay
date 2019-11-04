# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="The test command for ROS 2 launch tests."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros_testing-release/archive/release/eloquent/${PN}/0.2.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/domain_coordinator
	ros-eloquent/launch
	ros-eloquent/launch_ros
	ros-eloquent/launch_testing
	ros-eloquent/launch_testing_ros
	ros-eloquent/ros2cli
	test? ( ros-eloquent/ament_copyright )
	test? ( ros-eloquent/ament_flake8 )
	test? ( ros-eloquent/ament_pep257 )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
