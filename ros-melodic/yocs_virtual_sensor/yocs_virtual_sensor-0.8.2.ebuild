# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Virtual sensor that uses semantic map information to &quot;see&quot; obstac[...]"
HOMEPAGE="http://ros.org/wiki/yocs_virtual_sensor"
SRC_URI="https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/${PN}/0.8.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/rospy_message_converter
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/visualization_msgs
	ros-melodic/yocs_math_toolkit
	ros-melodic/yocs_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
