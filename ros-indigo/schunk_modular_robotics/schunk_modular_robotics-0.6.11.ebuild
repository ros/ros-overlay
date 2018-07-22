# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This stack includes packages that provide access to the Schunk hardware thr[...]"
HOMEPAGE="http://ros.org/wiki/schunk_modular_robotics"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/indigo/${PN}/0.6.11-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/schunk_description
	ros-indigo/schunk_libm5api
	ros-indigo/schunk_powercube_chain
	ros-indigo/schunk_sdh
	ros-indigo/schunk_simulated_tactile_sensors
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
