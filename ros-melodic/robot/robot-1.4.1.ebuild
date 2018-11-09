# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A metapackage which extends ros_base and includes ROS libaries for any robo[...]"
HOMEPAGE="https://github.com/ros/metapackages"
SRC_URI="https://github.com/ros-gbp/metapackages-release/archive/release/melodic/${PN}/1.4.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/control_msgs
	ros-melodic/diagnostics
	ros-melodic/executive_smach
	ros-melodic/filters
	ros-melodic/geometry
	ros-melodic/joint_state_publisher
	ros-melodic/kdl_parser
	ros-melodic/kdl_parser_py
	ros-melodic/robot_state_publisher
	ros-melodic/ros_base
	ros-melodic/urdf
	ros-melodic/urdf_parser_plugin
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
