# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Complete functionality tests for PR2. Contains utilities designed to test a[...]"
HOMEPAGE="http://ros.org/wiki/pr2_bringup_tests"
SRC_URI="https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/${PN}/1.0.15-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/camera_calibration
	ros-kinetic/ethercat_trigger_controllers
	ros-kinetic/image_view
	ros-kinetic/pr2_bringup
	ros-kinetic/pr2_controller_manager
	ros-kinetic/pr2_mannequin_mode
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
