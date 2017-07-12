# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rosh is a Pythonbased scripting and runtime environment for ROS  Through rosh "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/OSUrobotics/rosh_core-release/archive/release/indigo/rosh/1.0.9-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosgraph
	ros-indigo/roshlaunch
	ros-indigo/rosmsg
	ros-indigo/rosnode
	ros-indigo/rosparam
	ros-indigo/rospy
	ros-indigo/rosservice
	ros-indigo/rostopic
	dev-python/ipython
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

