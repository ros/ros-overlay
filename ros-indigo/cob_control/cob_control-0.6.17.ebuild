# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="cob_control meta-package"
HOMEPAGE="http://ros.org/wiki/cob_control"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/indigo/${PN}/0.6.17-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_base_velocity_smoother
	ros-indigo/cob_cartesian_controller
	ros-indigo/cob_collision_velocity_filter
	ros-indigo/cob_control_mode_adapter
	ros-indigo/cob_control_msgs
	ros-indigo/cob_footprint_observer
	ros-indigo/cob_frame_tracker
	ros-indigo/cob_model_identifier
	ros-indigo/cob_obstacle_distance
	ros-indigo/cob_omni_drive_controller
	ros-indigo/cob_trajectory_controller
	ros-indigo/cob_twist_controller
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
