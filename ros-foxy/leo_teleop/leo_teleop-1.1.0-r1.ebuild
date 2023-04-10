# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Scripts and launch files for Leo Rover teleoperation"
HOMEPAGE="http://wiki.ros.org/leo_teleop"
SRC_URI="https://github.com/ros2-gbp/leo_common-release/archive/release/foxy/${PN}/1.1.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/joy
	ros-foxy/teleop_twist_joy
	ros-foxy/teleop_twist_keyboard
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
