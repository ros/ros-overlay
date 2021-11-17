# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="cob_control meta-package"
HOMEPAGE="http://ros.org/wiki/cob_control"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/noetic/${PN}/0.8.13-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_base_controller_utils
	ros-noetic/cob_base_velocity_smoother
	ros-noetic/cob_cartesian_controller
	ros-noetic/cob_collision_velocity_filter
	ros-noetic/cob_control_mode_adapter
	ros-noetic/cob_control_msgs
	ros-noetic/cob_footprint_observer
	ros-noetic/cob_frame_tracker
	ros-noetic/cob_hardware_emulation
	ros-noetic/cob_mecanum_controller
	ros-noetic/cob_model_identifier
	ros-noetic/cob_obstacle_distance
	ros-noetic/cob_omni_drive_controller
	ros-noetic/cob_trajectory_controller
	ros-noetic/cob_tricycle_controller
	ros-noetic/cob_twist_controller
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
