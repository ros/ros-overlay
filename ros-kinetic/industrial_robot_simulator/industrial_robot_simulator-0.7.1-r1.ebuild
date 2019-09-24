# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The industrial robot simulator is a stand in for industrial robot driver no[...]"
HOMEPAGE="http://ros.org/wiki/industrial_robot_simulator"
SRC_URI="https://github.com/ros-industrial-release/industrial_core-release/archive/release/kinetic/${PN}/0.7.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/control_msgs
	ros-kinetic/industrial_msgs
	ros-kinetic/industrial_robot_client
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/trajectory_msgs
	test? ( ros-kinetic/roslaunch )
	dev-python/rospkg
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
