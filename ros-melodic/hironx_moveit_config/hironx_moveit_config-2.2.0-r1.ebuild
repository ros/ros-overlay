# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="http://wiki.ros.org/hironx_moveit_config"
SRC_URI="https://github.com/tork-a/rtmros_hironx-release/archive/release/melodic/${PN}/2.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/hironx_ros_bridge
	ros-melodic/moveit_planners
	ros-melodic/moveit_ros
	ros-melodic/moveit_simple_controller_manager
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/collada_urdf
	ros-melodic/moveit_ros_move_group
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
