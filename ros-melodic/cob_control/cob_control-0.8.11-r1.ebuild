# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="cob_control meta-package"
HOMEPAGE="http://ros.org/wiki/cob_control"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/melodic/${PN}/0.8.11-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_base_controller_utils
	ros-melodic/cob_base_velocity_smoother
	ros-melodic/cob_cartesian_controller
	ros-melodic/cob_collision_velocity_filter
	ros-melodic/cob_control_mode_adapter
	ros-melodic/cob_control_msgs
	ros-melodic/cob_footprint_observer
	ros-melodic/cob_frame_tracker
	ros-melodic/cob_hardware_emulation
	ros-melodic/cob_mecanum_controller
	ros-melodic/cob_model_identifier
	ros-melodic/cob_obstacle_distance
	ros-melodic/cob_omni_drive_controller
	ros-melodic/cob_trajectory_controller
	ros-melodic/cob_tricycle_controller
	ros-melodic/cob_twist_controller
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
