# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="Tool to update the robot_description dinamically from updates on a target x[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orise-robotics/${PN}-release/archive/release/foxy/${PN}/0.1.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/joint_state_publisher_gui
	ros-foxy/launch
	ros-foxy/launch_ros
	ros-foxy/rcl_interfaces
	ros-foxy/rclpy
	ros-foxy/robot_state_publisher
	ros-foxy/rviz2
	ros-foxy/xacro
	test? ( ros-foxy/ament_copyright )
	test? ( ros-foxy/ament_flake8 )
	test? ( ros-foxy/ament_pep257 )
	test? ( ros-foxy/ament_xmllint )
	test? ( ros-foxy/launch_testing )
	dev-python/watchdog
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
