# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Sawyer Roch robot driver"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/indigo/roch_base/1.0.15-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/angles
	ros-indigo/controller_manager
	ros-indigo/diagnostic_aggregator
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/diff_drive_controller
	ros-indigo/geometry_msgs
	ros-indigo/hardware_interface
	ros-indigo/nodelet
	ros-indigo/roch_control
	ros-indigo/roch_description
	ros-indigo/roch_msgs
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/topic_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
	ros-indigo/roslint
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
