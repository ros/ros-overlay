# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="URDF description for Heron"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/heron-release/archive/release/indigo/heron_description/0.2.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/lms1xx
	ros-indigo/robot_state_publisher
	ros-indigo/urdf
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
