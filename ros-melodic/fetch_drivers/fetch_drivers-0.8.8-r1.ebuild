# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The public fetch_drivers package is a binary only release.\
\
	fetch_dri[...]"
HOMEPAGE="https://wiki.ros.org/fetch_drivers"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/melodic/${PN}/0.8.8-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Proprietary"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/diagnostic_msgs
	ros-melodic/fetch_auto_dock_msgs
	ros-melodic/fetch_driver_msgs
	ros-melodic/nav_msgs
	ros-melodic/power_msgs
	ros-melodic/robot_calibration_msgs
	ros-melodic/robot_controllers
	ros-melodic/robot_controllers_interface
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/roscpp_serialization
	ros-melodic/rostime
	ros-melodic/sensor_msgs
	ros-melodic/urdf
	dev-libs/boost[python]
	net-misc/curl
	dev-libs/urdfdom
	dev-lang/python
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/mk
	ros-melodic/rospack
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
