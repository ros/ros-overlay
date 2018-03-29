# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS packages for the thormang3_ppc \(meta package\)"
HOMEPAGE="http://wiki.ros.org/thormang3_ppc"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-PPC-release/archive/release/kinetic/${PN}/0.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/thormang3_manipulation_demo
	ros-kinetic/thormang3_sensors
	ros-kinetic/thormang3_walking_demo
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
