# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Example programs for Baxter SDK usage."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RethinkRobotics-release/baxter_examples-release/archive/release/indigo/baxter_examples/1.2.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/baxter_core_msgs
	ros-indigo/baxter_interface
	ros-indigo/control_msgs
	ros-indigo/cv_bridge
	ros-indigo/dynamic_reconfigure
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/trajectory_msgs
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
