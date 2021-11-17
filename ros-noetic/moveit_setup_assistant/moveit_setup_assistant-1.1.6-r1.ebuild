# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Generates a configuration package that makes it easy to use MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/noetic/${PN}/1.1.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/moveit_core
	ros-noetic/moveit_ros_planning
	ros-noetic/moveit_ros_visualization
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/rviz
	ros-noetic/srdfdom
	ros-noetic/urdf
	ros-noetic/xacro
	test? ( ros-noetic/moveit_resources_panda_moveit_config )
	test? ( ros-noetic/rosunit )
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/ompl
	dev-games/ogre
	dev-qt/qtopengl:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
