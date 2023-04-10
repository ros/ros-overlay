# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Launch Ignition simulation with Dolly robot."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/chapulina/dolly-release/archive/release/foxy/${PN}/0.3.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/dolly_follow
	ros-foxy/ros2launch
	ros-foxy/ros_ign_bridge
	ros-foxy/ros_ign_gazebo
	ros-foxy/rviz2
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
