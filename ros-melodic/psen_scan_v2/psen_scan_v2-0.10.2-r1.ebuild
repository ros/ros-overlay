# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS support for the Pilz laser scanner"
HOMEPAGE="https://github.com/PilzDE/psen_scan_v2/issues"
SRC_URI="https://github.com/PilzDE/${PN}-release/archive/release/melodic/${PN}/0.10.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-3.0-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/robot_state_publisher
	ros-melodic/rosconsole_bridge
	ros-melodic/roscpp
	ros-melodic/roslaunch
	ros-melodic/rviz
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/visualization_msgs
	ros-melodic/xacro
	test? ( ros-melodic/code_coverage )
	test? ( ros-melodic/rosbag )
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	dev-libs/libfmt
	dev-libs/tinyxml2
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
