# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'ROSH plugin for packages in the common stack'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/OSUrobotics/rosh_robot_plugins-release/archive/release/indigo/rosh_common/1.0.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/nav_msgs
	ros-indigo/rosh
	ros-indigo/roslib
	ros-indigo/rosmsg
	ros-indigo/rospy
	ros-indigo/rostopic
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

