# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="NONE"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/abb-release/archive/release/indigo/abb_irb6640_support/1.2.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="Apache-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/abb_driver
	ros-indigo/joint_state_publisher
	ros-indigo/robot_state_publisher
	ros-indigo/rviz
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

