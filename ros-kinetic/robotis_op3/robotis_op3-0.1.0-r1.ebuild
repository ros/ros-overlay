# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS packages for the robotis_op3 \(meta package\)"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/robotis_op3/0.1.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cm_740_module
	ros-kinetic/op3_action_module
	ros-kinetic/op3_base_module
	ros-kinetic/op3_head_control_module
	ros-kinetic/op3_kinematics_dynamics
	ros-kinetic/op3_manager
	ros-kinetic/op3_walking_module
	ros-kinetic/open_cr_module
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
