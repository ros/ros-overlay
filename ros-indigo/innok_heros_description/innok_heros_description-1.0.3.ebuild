# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Innok Heros URDF description and RVIZ launch file"
HOMEPAGE="http://wiki.ros.org/Robots/Innok-Heros"
SRC_URI="https://github.com/innokrobotics/innok_heros_description-release/archive/release/indigo/innok_heros_description/1.0.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/joint_state_publisher
	ros-indigo/robot_state_publisher
	ros-indigo/rviz
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
