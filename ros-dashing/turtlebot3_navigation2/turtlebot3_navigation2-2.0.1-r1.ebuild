# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="ROS 2 launch scripts for navigation2"
HOMEPAGE="http://wiki.ros.org/turtlebot3_bringup"
SRC_URI="https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/${PN}/2.0.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/nav2_bringup
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
