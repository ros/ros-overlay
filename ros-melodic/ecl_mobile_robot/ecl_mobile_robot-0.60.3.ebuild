# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Contains transforms \(e.g. differential drive inverse kinematics\)\
	for[...]"
HOMEPAGE="http://wiki.ros.org/ecl_mobile_robot"
SRC_URI="https://github.com/yujinrobot-release/ecl_navigation-release/archive/release/melodic/${PN}/0.60.3-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ecl_build
	ros-melodic/ecl_errors
	ros-melodic/ecl_formatters
	ros-melodic/ecl_geometry
	ros-melodic/ecl_license
	ros-melodic/ecl_linear_algebra
	ros-melodic/ecl_math
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
