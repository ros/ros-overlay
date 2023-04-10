# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Common support functionality used throughout the navigation 2 stack"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/humble/${PN}/1.1.6-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/launch
	ros-humble/launch_ros
	ros-humble/osrf_pycommon
	ros-humble/rclpy
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_core
	ros-humble/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
