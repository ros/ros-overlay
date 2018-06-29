# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Demo of turtlebot2 localization with amcl."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/turtlebot2_demo-release/archive/release/bouncy/${PN}/0.5.0-2.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/amcl
	ros-bouncy/ament_index_python
	ros-bouncy/astra_camera
	ros-bouncy/depthimage_to_laserscan
	ros-bouncy/joy
	ros-bouncy/launch
	ros-bouncy/map_server
	ros-bouncy/ros2run
	ros-bouncy/teleop_twist_joy
	ros-bouncy/tf2_ros
	ros-bouncy/turtlebot2_drivers
	test? ( ros-bouncy/ament_lint_auto )
	test? ( ros-bouncy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
