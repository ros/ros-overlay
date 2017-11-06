# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="pr2_teleop_general"
HOMEPAGE="http://ros.org/wiki/pr2_teleop_general"
SRC_URI="https://github.com/pr2-gbp/pr2_apps-release/archive/release/indigo/pr2_teleop_general/0.5.21-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/angles
	ros-indigo/geometry_msgs
	ros-indigo/moveit_msgs
	ros-indigo/polled_camera
	ros-indigo/pr2_common_action_msgs
	ros-indigo/pr2_controller_manager
	ros-indigo/pr2_controllers_msgs
	ros-indigo/pr2_mechanism_msgs
	ros-indigo/pr2_msgs
	ros-indigo/ps3joy
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/urdf
	sci-physics/bullet
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
