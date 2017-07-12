# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package with launch files to start the needed nodes for the Shadow Robot EtherCA"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-ros-interface-ethercat-release/archive/release/indigo/sr_edc_launch/1.4.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_aggregator
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/ros_ethercat
	ros-indigo/roscpp
	ros-indigo/self_test
	ros-indigo/sr_description
	ros-indigo/sr_ethercat_hand_config
	ros-indigo/sr_mechanism_controllers
	ros-indigo/urdf
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

