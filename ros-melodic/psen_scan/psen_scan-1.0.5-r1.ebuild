# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The psen_scan package for Pilz laser scanner"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/PilzDE/${PN}-release/archive/release/melodic/${PN}/1.0.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/roscpp
	ros-melodic/roslaunch
	ros-melodic/rviz
	ros-melodic/sensor_msgs
	test? ( ros-melodic/code_coverage )
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
