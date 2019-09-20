# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>\
	  ROS-Industrial support for the ABB IRB 5400 \(and variants\).\
 [...]"
HOMEPAGE="http://ros.org/wiki/abb_irb5400_support"
SRC_URI="https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/${PN}/1.3.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/abb_driver
	ros-kinetic/abb_resources
	ros-kinetic/joint_state_publisher
	ros-kinetic/robot_state_publisher
	ros-kinetic/rviz
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
