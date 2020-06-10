# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Generates a configuration package that makes it easy to use MoveIt!"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/melodic/${PN}/1.0.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/moveit_core
	ros-melodic/moveit_ros_planning
	ros-melodic/moveit_ros_visualization
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/rviz
	ros-melodic/srdfdom
	ros-melodic/urdf
	ros-melodic/xacro
	test? ( ros-melodic/moveit_resources )
	test? ( ros-melodic/rosunit )
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-games/ogre
	dev-qt/qtopengl:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
