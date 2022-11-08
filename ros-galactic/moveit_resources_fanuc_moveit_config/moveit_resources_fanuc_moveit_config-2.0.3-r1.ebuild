# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="<p>\
	  MoveIt Resources for testing: Fanuc M-10iA.\
	</p>\
	<p>\
[...]"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit_resources-release/archive/release/galactic/${PN}/2.0.3-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/joint_state_publisher
	ros-galactic/moveit_resources_fanuc_description
	ros-galactic/robot_state_publisher
	ros-galactic/tf2_ros
	ros-galactic/xacro
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
