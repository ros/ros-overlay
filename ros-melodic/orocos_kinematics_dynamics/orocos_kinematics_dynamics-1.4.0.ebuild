# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package depends on a recent version of the Kinematics and Dynamics\
  [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orocos/orocos-kdl-release/archive/release/melodic/${PN}/1.4.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/orocos_kdl
	ros-melodic/python_orocos_kdl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
