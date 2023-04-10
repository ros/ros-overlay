# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Complete functionality tests for PR2. Contains utilities designed to test a[...]"
HOMEPAGE="http://ros.org/wiki/pr2_bringup_tests"
SRC_URI="https://github.com/pr2-gbp/pr2_self_test-release/archive/release/melodic/${PN}/1.0.15-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/camera_calibration
	ros-melodic/ethercat_trigger_controllers
	ros-melodic/image_view
	ros-melodic/pr2_bringup
	ros-melodic/pr2_controller_manager
	ros-melodic/pr2_mannequin_mode
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
