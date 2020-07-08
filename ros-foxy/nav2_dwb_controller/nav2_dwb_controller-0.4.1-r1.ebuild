# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="ROS2 controller \(DWB\) metapackage"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/${PN}/0.4.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/costmap_queue
	ros-foxy/dwb_core
	ros-foxy/dwb_critics
	ros-foxy/dwb_msgs
	ros-foxy/dwb_plugins
	ros-foxy/nav_2d_msgs
	ros-foxy/nav_2d_utils
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
