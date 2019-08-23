# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="Interface between Webots and ROS2"
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/cyberbotics/${PN}-release/archive/release/crystal/${PN}/0.0.2-1.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/builtin_interfaces
	ros-crystal/rclpy
	ros-crystal/std_msgs
	ros-crystal/webots_ros2_core
	ros-crystal/webots_ros2_examples
	ros-crystal/webots_ros2_universal_robot
	test? ( ros-crystal/ament_copyright )
	test? ( ros-crystal/ament_flake8 )
	test? ( ros-crystal/ament_pep257 )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
