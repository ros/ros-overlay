# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package describes robot manager to execute THORMANG3\'s motion modules."
HOMEPAGE="http://wiki.ros.org/thormang3_manager"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/${PN}/0.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/robotis_controller
	ros-kinetic/roscpp
	ros-kinetic/thormang3_action_module
	ros-kinetic/thormang3_base_module
	ros-kinetic/thormang3_description
	ros-kinetic/thormang3_feet_ft_module
	ros-kinetic/thormang3_gripper_module
	ros-kinetic/thormang3_head_control_module
	ros-kinetic/thormang3_imu_3dm_gx4
	ros-kinetic/thormang3_manipulation_module
	ros-kinetic/thormang3_walking_module
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
