# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A metapackage which extends ros_base and includes ROS libaries for any robo[...]"
HOMEPAGE="https://github.com/ros/metapackages"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/noetic/${PN}/1.5.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/control_msgs
	ros-noetic/diagnostics
	ros-noetic/executive_smach
	ros-noetic/filters
	ros-noetic/geometry
	ros-noetic/joint_state_publisher
	ros-noetic/kdl_parser
	ros-noetic/robot_state_publisher
	ros-noetic/ros_base
	ros-noetic/urdf
	ros-noetic/urdf_parser_plugin
	ros-noetic/xacro
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
