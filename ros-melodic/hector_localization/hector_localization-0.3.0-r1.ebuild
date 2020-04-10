# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The hector_localization stack is a collection of packages, that provide the[...]"
HOMEPAGE="http://ros.org/wiki/hector_localization"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/${PN}-release/archive/release/melodic/${PN}/0.3.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/hector_pose_estimation
	ros-melodic/hector_pose_estimation_core
	ros-melodic/message_to_tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
