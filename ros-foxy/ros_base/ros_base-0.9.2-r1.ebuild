# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package which extends \'ros_core\' and includes other basic functionaliti[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/foxy/${PN}/0.9.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/geometry2
	ros-foxy/kdl_parser
	ros-foxy/robot_state_publisher
	ros-foxy/ros_core
	ros-foxy/rosbag2
	ros-foxy/urdf
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
