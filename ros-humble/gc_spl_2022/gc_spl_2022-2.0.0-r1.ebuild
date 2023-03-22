# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="GameController-Robot communication in RoboCup SPL at RoboCup2022"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/gc_spl-release/archive/release/humble/${PN}/2.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rcgcd_spl_14
	ros-humble/rcgcd_spl_14_conversion
	ros-humble/rcgcrd_spl_4
	ros-humble/rcgcrd_spl_4_conversion
	ros-humble/rclpy
	test? ( ros-humble/ament_copyright )
	test? ( ros-humble/ament_flake8 )
	test? ( ros-humble/ament_pep257 )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
