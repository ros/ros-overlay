# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>\
	  ROS-Industrial support for the ABB IRB 6600 \(and variants\).\
 [...]"
HOMEPAGE="http://ros.org/wiki/abb_irb6600_support"
SRC_URI="https://github.com/ros-industrial-release/abb-release/archive/release/melodic/${PN}/1.3.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/abb_driver
	ros-melodic/joint_state_publisher
	ros-melodic/robot_state_publisher
	ros-melodic/rviz
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
