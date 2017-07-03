# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="This package depends on a recent version of the Kinematics and Dynamics
	Libr"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/smits/orocos-kdl-release/archive/release/lunar/orocos_kinematics_dynamics/1.3.1-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/orocos_kdl
	ros-lunar/python_orocos_kdl
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

