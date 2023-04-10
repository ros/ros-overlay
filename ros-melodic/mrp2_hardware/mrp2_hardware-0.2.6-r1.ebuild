# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Hardware files to communicate with MRP2 base."
HOMEPAGE="http://wiki.ros.org/mrp2_hardware"
SRC_URI="https://github.com/milvusrobotics/mrp2_robot-release/archive/release/melodic/${PN}/0.2.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/controller_interface
	ros-melodic/controller_manager
	ros-melodic/dynamic_reconfigure
	ros-melodic/hardware_interface
	ros-melodic/nav_msgs
	ros-melodic/realtime_tools
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	ros-melodic/urdf
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
