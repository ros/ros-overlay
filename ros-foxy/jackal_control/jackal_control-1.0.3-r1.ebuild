# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Controllers for Jackal"
HOMEPAGE="http://wiki.ros.org/jackal_control"
SRC_URI="https://github.com/clearpath-gbp/jackal-release/archive/release/foxy/${PN}/1.0.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/controller_manager
	ros-foxy/diff_drive_controller
	ros-foxy/imu_filter_madgwick
	ros-foxy/interactive_marker_twist_server
	ros-foxy/jackal_description
	ros-foxy/joint_state_broadcaster
	ros-foxy/joint_trajectory_controller
	ros-foxy/joy
	ros-foxy/robot_localization
	ros-foxy/robot_state_publisher
	ros-foxy/teleop_twist_joy
	ros-foxy/twist_mux
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
