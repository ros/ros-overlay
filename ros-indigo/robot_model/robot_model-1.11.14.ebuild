# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="tta#text"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/robot_model-release/archive/release/indigo/robot_model/1.11.14-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/collada_parser
	ros-indigo/collada_urdf
	ros-indigo/joint_state_publisher
	ros-indigo/kdl_parser
	ros-indigo/resource_retriever
	ros-indigo/urdf
	ros-indigo/urdf_parser_plugin
	dev-libs/urdfdom
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

