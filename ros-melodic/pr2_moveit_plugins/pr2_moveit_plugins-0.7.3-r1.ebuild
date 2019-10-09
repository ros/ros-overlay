# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="PR2 specific plugins for MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit_pr2-release/archive/release/melodic/${PN}/0.7.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/angles
	ros-melodic/control_msgs
	ros-melodic/eigen_conversions
	ros-melodic/kdl_parser
	ros-melodic/moveit_core
	ros-melodic/pluginlib
	ros-melodic/pr2_controllers_msgs
	ros-melodic/pr2_mechanism_msgs
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/tf
	ros-melodic/tf_conversions
	ros-melodic/urdf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
