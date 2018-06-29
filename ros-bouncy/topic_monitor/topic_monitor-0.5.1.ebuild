# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="Package containing tools for monitoring ROS 2 topics."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/demos-release/archive/release/bouncy/${PN}/0.5.1-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/launch
	ros-bouncy/launch_ros
	ros-bouncy/rclpy
	ros-bouncy/std_msgs
	test? ( ros-bouncy/ament_flake8 )
	test? ( ros-bouncy/ament_pep257 )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
