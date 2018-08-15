# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="URDF and meshes describing the Chrysler Pacifica."
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/${PN}/0.0.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/dbw_mkz_description
	ros-melodic/robot_state_publisher
	ros-melodic/roslaunch
	ros-melodic/urdf
	ros-melodic/xacro
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/roslib )
	test? ( ros-melodic/rviz )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
