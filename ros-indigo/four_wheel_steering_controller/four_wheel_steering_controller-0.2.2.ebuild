# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Controller for a four wheel steering mobile base."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/Romea/romea_controllers-release/archive/release/indigo/four_wheel_steering_controller/0.2.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_interface
	ros-indigo/four_wheel_steering_msgs
	ros-indigo/nav_msgs
	ros-indigo/realtime_tools
	ros-indigo/tf
	ros-indigo/urdf_vehicle_kinematic
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
