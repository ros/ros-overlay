# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS packages for the thormang3_msgs \(meta package\)"
HOMEPAGE="http://wiki.ros.org/thormang3_msgs"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-msgs-release/archive/release/kinetic/${PN}/0.3.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/thormang3_action_module_msgs
	ros-kinetic/thormang3_feet_ft_module_msgs
	ros-kinetic/thormang3_head_control_module_msgs
	ros-kinetic/thormang3_manipulation_module_msgs
	ros-kinetic/thormang3_offset_tuner_msgs
	ros-kinetic/thormang3_walking_module_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
