# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="EusLisp meets SLIME"
HOMEPAGE="https://github.com/jsk-ros-pkg/euslime"
SRC_URI="https://github.com/jsk-ros-pkg/${PN}-release/archive/release/melodic/${PN}/1.1.4-4.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/roseus
	ros-melodic/slime_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/catkin_virtualenv
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
