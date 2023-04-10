# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="tf2_tools"
HOMEPAGE="http://www.ros.org/wiki/tf2_tools"
SRC_URI="https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/${PN}/0.13.14-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/tf2
	ros-foxy/tf2_msgs
	ros-foxy/tf2_ros
	media-gfx/graphviz
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
