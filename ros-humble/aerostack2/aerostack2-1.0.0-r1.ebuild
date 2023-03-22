# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Aerostack2 is a ROS2-based framework for the development of autonomous syst[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/1.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/as2_alphanumeric_viewer
	ros-humble/as2_behavior
	ros-humble/as2_behavior_tree
	ros-humble/as2_behaviors_motion
	ros-humble/as2_behaviors_perception
	ros-humble/as2_behaviors_platform
	ros-humble/as2_behaviors_trajectory_generation
	ros-humble/as2_cli
	ros-humble/as2_core
	ros-humble/as2_gazebo_classic_assets
	ros-humble/as2_keyboard_teleoperation
	ros-humble/as2_motion_controller
	ros-humble/as2_motion_reference_handlers
	ros-humble/as2_msgs
	ros-humble/as2_platform_crazyflie
	ros-humble/as2_platform_tello
	ros-humble/as2_python_api
	ros-humble/as2_realsense_interface
	ros-humble/as2_state_estimator
	ros-humble/as2_usb_camera_interface
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
