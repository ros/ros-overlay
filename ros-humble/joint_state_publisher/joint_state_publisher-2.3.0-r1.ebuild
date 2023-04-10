# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-python

DESCRIPTION="This package contains a tool for setting and publishing joint state values [...]"
HOMEPAGE="http://www.ros.org/wiki/joint_state_publisher"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.3.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rclpy
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	test? ( ros-humble/ament_copyright )
	test? ( ros-humble/ament_xmllint )
	test? ( ros-humble/launch_testing )
	test? ( ros-humble/launch_testing_ros )
	test? ( ros-humble/ros2topic )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
