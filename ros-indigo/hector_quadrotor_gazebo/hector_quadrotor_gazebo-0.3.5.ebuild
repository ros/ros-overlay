# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="hector_quadrotor_gazebo provides a quadrotor model for the gazebo simulator[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_quadrotor-release/archive/release/indigo/hector_quadrotor_gazebo/0.3.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_plugins
	ros-indigo/hector_gazebo_plugins
	ros-indigo/hector_quadrotor_controller_gazebo
	ros-indigo/hector_quadrotor_description
	ros-indigo/hector_quadrotor_gazebo_plugins
	ros-indigo/hector_quadrotor_model
	ros-indigo/hector_quadrotor_pose_estimation
	ros-indigo/hector_quadrotor_teleop
	ros-indigo/hector_sensors_gazebo
	ros-indigo/hector_uav_msgs
	ros-indigo/message_to_tf
	ros-indigo/robot_state_publisher
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
