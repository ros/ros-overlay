# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package which extends \'ros_core\' and includes other basic functionaliti[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/bouncy/${PN}/0.5.0-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-bouncy/kdl_parser
	ros-bouncy/robot_state_publisher
	ros-bouncy/ros_core
	ros-bouncy/tf2
	ros-bouncy/tf2_eigen
	ros-bouncy/tf2_geometry_msgs
	ros-bouncy/tf2_ros
	ros-bouncy/urdf
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
