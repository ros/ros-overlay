# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Integration tests for the Schunk SVH ROS2 driver"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/schunk_svh_ros_driver-release/archive/release/foxy/${PN}/2.0.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="GPL-3.0-or-later"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-foxy/controller_manager_msgs )
	test? ( ros-foxy/launch )
	test? ( ros-foxy/launch_ros )
	test? ( ros-foxy/launch_testing_ament_cmake )
	test? ( ros-foxy/schunk_svh_driver )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
