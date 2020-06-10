# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Provides small examples for use of the fmi_adapter package"
HOMEPAGE="http://wiki.ros.org/fmi_adapter"
SRC_URI="https://github.com/boschresearch/fmi_adapter_ros2-release/archive/release/foxy/${PN}/0.1.8-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/fmi_adapter
	ros-foxy/launch
	ros-foxy/launch_ros
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
