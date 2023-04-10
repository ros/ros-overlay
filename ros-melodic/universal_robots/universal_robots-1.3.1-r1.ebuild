# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS-Industrial support for Universal Robots manipulators \(metapackage\)."
HOMEPAGE="http://wiki.ros.org/universal_robots"
SRC_URI="https://github.com/ros-industrial-release/universal_robot-release/archive/release/melodic/${PN}/1.3.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ur10_moveit_config
	ros-melodic/ur10e_moveit_config
	ros-melodic/ur16e_moveit_config
	ros-melodic/ur3_moveit_config
	ros-melodic/ur3e_moveit_config
	ros-melodic/ur5_moveit_config
	ros-melodic/ur5e_moveit_config
	ros-melodic/ur_description
	ros-melodic/ur_gazebo
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
