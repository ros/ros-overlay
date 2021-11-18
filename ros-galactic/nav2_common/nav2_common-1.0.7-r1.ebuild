# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Common support functionality used throughout the navigation 2 stack"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/${PN}/1.0.7-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/launch
	ros-galactic/launch_ros
	ros-galactic/osrf_pycommon
	ros-galactic/rclpy
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_core
	ros-galactic/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
