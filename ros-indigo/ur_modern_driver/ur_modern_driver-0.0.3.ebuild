# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The new driver for the UR3/UR5/UR10 robot arms from universal robots"
HOMEPAGE="http://wiki.ros.org/ur_modern_driver"
SRC_URI="https://github.com/clearpath-gbp/ur_modern_driver-release/archive/release/indigo/ur_modern_driver/0.0.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/control_msgs
	ros-indigo/controller_manager
	ros-indigo/geometry_msgs
	ros-indigo/hardware_interface
	ros-indigo/ros_controllers
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/trajectory_msgs
	ros-indigo/ur_description
	ros-indigo/ur_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

