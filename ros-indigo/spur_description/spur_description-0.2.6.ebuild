# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A package for storing 3D model of SPUR omni-directional mobile manipulator [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/spur-release/archive/release/indigo/spur_description/0.2.6-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_plugins
	ros-indigo/rviz
	ros-indigo/urdf
	ros-indigo/urdf_tutorial
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
