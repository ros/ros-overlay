# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Complete functionality tests for PR2. Contains utilities designed to test a[...]"
HOMEPAGE="http://ros.org/wiki/pr2_bringup_tests"
SRC_URI="https://github.com/pr2-gbp/pr2_self_test-release/archive/release/noetic/${PN}/1.0.15-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/camera_calibration
	ros-noetic/ethercat_trigger_controllers
	ros-noetic/image_view
	ros-noetic/pr2_bringup
	ros-noetic/pr2_controller_manager
	ros-noetic/pr2_mannequin_mode
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
