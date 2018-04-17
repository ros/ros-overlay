# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains ros_control based robot controller for PANASONIC MINA[...]"
HOMEPAGE="http://ros.org/wiki/minas_control"
SRC_URI="https://github.com/tork-a/minas-release/archive/release/indigo/${PN}/1.0.9-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( GPL-2 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/controller_manager
	ros-indigo/diagnostic_updater
	ros-indigo/ethercat_manager
	ros-indigo/hardware_interface
	ros-indigo/joint_limits_interface
	ros-indigo/sensor_msgs
	ros-indigo/trajectory_msgs
	ros-indigo/transmission_interface
	test? ( ros-indigo/roslaunch )
	test? ( ros-indigo/rostest )
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/soem
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
