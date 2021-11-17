# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This stack includes packages that provide access to the Schunk hardware thr[...]"
HOMEPAGE="http://ros.org/wiki/schunk_modular_robotics"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/noetic/${PN}/0.6.14-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/schunk_description
	ros-noetic/schunk_libm5api
	ros-noetic/schunk_powercube_chain
	ros-noetic/schunk_sdh
	ros-noetic/schunk_simulated_tactile_sensors
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
