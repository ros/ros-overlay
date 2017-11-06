# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The urdf_sim_tutorial package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/urdf_tutorial-release/archive/release/indigo/urdf_sim_tutorial/0.3.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager
	ros-indigo/diff_drive_controller
	ros-indigo/gazebo_ros
	ros-indigo/gazebo_ros_control
	ros-indigo/joint_state_controller
	ros-indigo/position_controllers
	ros-indigo/robot_state_publisher
	ros-indigo/rqt_robot_steering
	ros-indigo/rviz
	ros-indigo/urdf_tutorial
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
