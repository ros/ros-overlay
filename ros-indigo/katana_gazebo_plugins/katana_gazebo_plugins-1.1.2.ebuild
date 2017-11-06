# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides Gazebo plugins to simulate the Katana arm"
HOMEPAGE="http://ros.org/wiki/katana_gazebo_plugins"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/indigo/katana_gazebo_plugins/1.1.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/control_msgs
	ros-indigo/control_toolbox
	ros-indigo/gazebo_ros
	ros-indigo/katana_msgs
	ros-indigo/sensor_msgs
	ros-indigo/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

