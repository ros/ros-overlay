# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains the python bindings PyKDL for the Kinematics and Dyna[...]"
HOMEPAGE="https://github.com/jsk-ros-pkg/orocos_kinematics_dynamics_python3"
SRC_URI="https://github.com/tork-a/orocos-kdl_python3-release/archive/release/melodic/${PN}/1.4.2-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/catkin
	ros-melodic/orocos_kdl
	dev-lang/python
"
DEPEND="${RDEPEND}
	dev-python/catkin_pkg
	dev-python/sip
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
