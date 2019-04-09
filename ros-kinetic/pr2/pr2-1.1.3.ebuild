# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A metapackage to aggregate several packages."
HOMEPAGE="https://github.com/ros/metapackages"
SRC_URI="https://github.com/PR2-prime/${PN}_metapackages-release/archive/release/kinetic/${PN}/1.1.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/audio_common
	ros-kinetic/joystick_drivers
	ros-kinetic/linux_networking
	ros-kinetic/microstrain_3dmgx2_imu
	ros-kinetic/pr2_apps
	ros-kinetic/pr2_base
	ros-kinetic/pr2_ethercat_drivers
	ros-kinetic/pr2_navigation_apps
	ros-kinetic/pr2_power_drivers
	ros-kinetic/pr2_robot
	ros-kinetic/prosilica_camera
	ros-kinetic/urg_node
	ros-kinetic/wge100_driver
	ros-kinetic/wifi_ddwrt
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
