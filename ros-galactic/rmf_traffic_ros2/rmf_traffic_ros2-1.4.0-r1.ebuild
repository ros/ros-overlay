# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package containing messages used by the RMF traffic management system."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_ros2-release/archive/release/galactic/${PN}/1.4.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/rclcpp
	ros-galactic/rmf_fleet_msgs
	ros-galactic/rmf_traffic
	ros-galactic/rmf_traffic_msgs
	ros-galactic/rmf_utils
	test? ( ros-galactic/ament_cmake_catch2 )
	test? ( ros-galactic/rmf_cmake_uncrustify )
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
