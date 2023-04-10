# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Driver for the FLIR pan/tilt units."
HOMEPAGE="http://wiki.ros.org/flir_ptu_driver"
SRC_URI="https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/melodic/${PN}/0.2.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/diagnostic_updater
	ros-melodic/flir_ptu_description
	ros-melodic/robot_state_publisher
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/serial
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
	ros-melodic/roslint
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
