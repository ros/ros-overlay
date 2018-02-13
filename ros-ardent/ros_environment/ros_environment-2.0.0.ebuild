# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The package provides the environment variables \`ROS_VERSION\` and \`ROS_DI[...]"
HOMEPAGE="https://github.com/ros/ros_environment"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/ardent/${PN}/2.0.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake_core
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
