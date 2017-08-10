# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/rtmros_hironx-release/archive/release/kinetic/hironx_moveit_config/2.0.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/hironx_ros_bridge
	ros-kinetic/moveit_planners
	ros-kinetic/moveit_ros
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/collada_urdf
	ros-kinetic/moveit_ros_move_group
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

