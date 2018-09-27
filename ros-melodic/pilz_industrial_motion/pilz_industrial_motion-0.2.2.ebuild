# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pilz_industrial_motion package"
HOMEPAGE="https://wiki.ros.org/pilz_industrial_motion"
SRC_URI="https://github.com/PilzDE/${PN}-release/archive/release/melodic/${PN}/0.2.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/pilz_extensions
	ros-melodic/pilz_msgs
	ros-melodic/pilz_trajectory_generation
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
