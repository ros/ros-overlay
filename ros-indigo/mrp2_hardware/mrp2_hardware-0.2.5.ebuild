# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Hardware files to communicate with MRP2 base"
HOMEPAGE="http://wiki.ros.org/mrp2_hardware"
SRC_URI="https://github.com/milvusrobotics/mrp2_robot-release/archive/release/indigo/mrp2_hardware/0.2.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_interface
	ros-indigo/controller_manager
	ros-indigo/dynamic_reconfigure
	ros-indigo/hardware_interface
	ros-indigo/nav_msgs
	ros-indigo/realtime_tools
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
	ros-indigo/urdf
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

