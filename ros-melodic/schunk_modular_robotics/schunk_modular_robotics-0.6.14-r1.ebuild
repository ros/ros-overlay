# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This stack includes packages that provide access to the Schunk hardware thr[...]"
HOMEPAGE="http://ros.org/wiki/schunk_modular_robotics"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/melodic/${PN}/0.6.14-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/schunk_description
	ros-melodic/schunk_libm5api
	ros-melodic/schunk_powercube_chain
	ros-melodic/schunk_sdh
	ros-melodic/schunk_simulated_tactile_sensors
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
