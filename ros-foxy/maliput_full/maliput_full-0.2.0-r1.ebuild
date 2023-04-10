# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Meta package that concentrates all maliput-related packages"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/maliput_infrastructure-release/archive/release/foxy/${PN}/0.2.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/maliput
	ros-foxy/maliput_dragway
	ros-foxy/maliput_drake
	ros-foxy/maliput_integration
	ros-foxy/maliput_malidrive
	ros-foxy/maliput_multilane
	ros-foxy/maliput_object
	ros-foxy/maliput_object_py
	ros-foxy/maliput_osm
	ros-foxy/maliput_py
	ros-foxy/maliput_sparse
	ros-foxy/maliput_viz
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
