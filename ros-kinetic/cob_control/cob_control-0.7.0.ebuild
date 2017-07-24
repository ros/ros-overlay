# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="cob_control meta-package"
HOMEPAGE="http://ros.org/wiki/cob_control"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_control/0.7.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_base_velocity_smoother
	ros-kinetic/cob_cartesian_controller
	ros-kinetic/cob_collision_velocity_filter
	ros-kinetic/cob_control_mode_adapter
	ros-kinetic/cob_control_msgs
	ros-kinetic/cob_footprint_observer
	ros-kinetic/cob_frame_tracker
	ros-kinetic/cob_model_identifier
	ros-kinetic/cob_obstacle_distance
	ros-kinetic/cob_omni_drive_controller
	ros-kinetic/cob_trajectory_controller
	ros-kinetic/cob_twist_controller
	ros-kinetic/cob_undercarriage_ctrl_node
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

