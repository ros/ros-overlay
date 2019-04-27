# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Complete functionality tests for PR2. Contains utilities designed to test a[...]"
HOMEPAGE="http://ros.org/wiki/pr2_bringup_tests"
SRC_URI="https://github.com/pr2-gbp/pr2_self_test-release/archive/release/indigo/${PN}/1.0.15-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_calibration
	ros-indigo/ethercat_trigger_controllers
	ros-indigo/image_view
	ros-indigo/pr2_bringup
	ros-indigo/pr2_controller_manager
	ros-indigo/pr2_mannequin_mode
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
