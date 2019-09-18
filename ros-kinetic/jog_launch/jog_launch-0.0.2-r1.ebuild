# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Collection of the launch files for jog_controller"
HOMEPAGE="http://wiki.ros.org/jog_launch"
SRC_URI="https://github.com/tork-a/jog_control-release/archive/release/kinetic/${PN}/0.0.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/fake_joint_launch
	ros-kinetic/jog_controller
	ros-kinetic/nextage_moveit_config
	ros-kinetic/roslaunch
	ros-kinetic/rostest
	ros-kinetic/tra1_moveit_config
	ros-kinetic/ur3_moveit_config
	ros-kinetic/ur5_moveit_config
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
