# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="pr2_joint_teleop"
HOMEPAGE="http://ros.org/wiki/pr2_joint_teleop"
SRC_URI="https://github.com/pr2-gbp/pr2_hack_the_future-release/archive/release/indigo/pr2_joint_teleop/1.1.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/pr2_controllers_msgs
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
