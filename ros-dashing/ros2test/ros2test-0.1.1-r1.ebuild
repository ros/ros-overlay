# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="The test command for ROS 2 launch tests."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros_testing-release/archive/release/dashing/${PN}/0.1.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/launch
	ros-dashing/launch_ros
	ros-dashing/launch_testing
	ros-dashing/launch_testing_ros
	ros-dashing/ros2cli
	test? ( ros-dashing/ament_copyright )
	test? ( ros-dashing/ament_flake8 )
	test? ( ros-dashing/ament_pep257 )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
