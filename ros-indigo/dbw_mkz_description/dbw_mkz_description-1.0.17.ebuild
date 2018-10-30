# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="URDF and meshes describing the Lincoln MKZ."
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/indigo/${PN}/1.0.17-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/robot_state_publisher
	ros-indigo/roslaunch
	ros-indigo/urdf
	ros-indigo/xacro
	test? ( ros-indigo/roslaunch )
	test? ( ros-indigo/roslib )
	test? ( ros-indigo/rviz )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
