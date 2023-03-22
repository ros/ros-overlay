# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package for all inverse kinematics solvers in MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/noetic/${PN}/1.1.11-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/moveit_core
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/tf2
	ros-noetic/tf2_kdl
	test? ( ros-noetic/moveit_resources_fanuc_description )
	test? ( ros-noetic/moveit_resources_fanuc_moveit_config )
	test? ( ros-noetic/moveit_resources_panda_description )
	test? ( ros-noetic/moveit_resources_panda_moveit_config )
	test? ( ros-noetic/moveit_ros_planning )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/xmlrpcpp )
	dev-cpp/eigen
	sci-libs/orocos_kdl
	dev-libs/urdfdom
	dev-python/lxml
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
