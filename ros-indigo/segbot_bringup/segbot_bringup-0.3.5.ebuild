# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Contains launch files and runtime scripts necessary for running\
	segbot[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/utexas-bwi-gbp/segbot-release/archive/release/indigo/segbot_bringup/0.3.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/bwi_logging
	ros-indigo/dynamic_reconfigure
	ros-indigo/joint_state_publisher
	ros-indigo/robot_state_publisher
	ros-indigo/segbot_description
	ros-indigo/segbot_sensors
	ros-indigo/segway_rmp
	ros-indigo/smart_battery_msgs
	ros-indigo/stop_base
	ros-indigo/tf
	ros-indigo/xacro
	dev-python/netifaces
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
