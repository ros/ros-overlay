# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="NONE"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/robot_model-release/archive/release/lunar/robot_model/1.12.11-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/collada_parser
	ros-lunar/collada_urdf
	ros-lunar/joint_state_publisher
	ros-lunar/kdl_parser
	ros-lunar/resource_retriever
	ros-lunar/urdf
	ros-lunar/urdf_parser_plugin
	dev-libs/urdfdom
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

