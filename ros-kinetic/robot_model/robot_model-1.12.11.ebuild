# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<tt>robot_model</tt> contains packages for modeling various\
	aspects of[...]"
HOMEPAGE="http://ros.org/wiki/robot_model"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/1.12.11-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/collada_parser
	ros-kinetic/collada_urdf
	ros-kinetic/joint_state_publisher
	ros-kinetic/kdl_parser
	ros-kinetic/resource_retriever
	ros-kinetic/urdf
	ros-kinetic/urdf_parser_plugin
	dev-libs/urdfdom
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
