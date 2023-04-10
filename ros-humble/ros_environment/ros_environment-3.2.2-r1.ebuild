# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="The package provides the environment variables \`ROS_VERSION\` and \`ROS_DI[...]"
HOMEPAGE="https://github.com/ros/ros_environment"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/3.2.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_core
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
