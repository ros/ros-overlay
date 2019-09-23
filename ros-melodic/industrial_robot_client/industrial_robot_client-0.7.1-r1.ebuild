# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="industrial robot client contains generic clients for connecting \
	 to i[...]"
HOMEPAGE="http://ros.org/wiki/industrial_robot_client"
SRC_URI="https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/${PN}/0.7.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/control_msgs
	ros-melodic/industrial_msgs
	ros-melodic/industrial_utils
	ros-melodic/robot_state_publisher
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/simple_message
	ros-melodic/std_msgs
	ros-melodic/trajectory_msgs
	ros-melodic/urdf
	test? ( ros-melodic/rosunit )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
