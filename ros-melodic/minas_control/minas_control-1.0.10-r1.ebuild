# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains ros_control based robot controller for PANASONIC MINA[...]"
HOMEPAGE="http://ros.org/wiki/minas_control"
SRC_URI="https://github.com/tork-a/minas-release/archive/release/melodic/${PN}/1.0.10-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( GPL-2.0-only BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/controller_manager
	ros-melodic/diagnostic_updater
	ros-melodic/ethercat_manager
	ros-melodic/hardware_interface
	ros-melodic/joint_limits_interface
	ros-melodic/realtime_tools
	ros-melodic/sensor_msgs
	ros-melodic/trajectory_msgs
	ros-melodic/transmission_interface
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/soem
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
