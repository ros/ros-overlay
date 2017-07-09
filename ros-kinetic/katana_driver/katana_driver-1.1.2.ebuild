# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack contains all descriptions, drivers and bringup facilities for Neuroni"
HOMEPAGE="http://ros.org/wiki/katana_driver"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_driver/1.1.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( BSD CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/katana
	ros-kinetic/katana_arm_gazebo
	ros-kinetic/katana_description
	ros-kinetic/katana_gazebo_plugins
	ros-kinetic/katana_moveit_ikfast_plugin
	ros-kinetic/katana_msgs
	ros-kinetic/katana_teleop
	ros-kinetic/katana_tutorials
	ros-kinetic/kni
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

