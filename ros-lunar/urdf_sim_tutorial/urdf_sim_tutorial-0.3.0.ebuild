# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The urdf_sim_tutorial package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/urdf_tutorial-release/archive/release/lunar/urdf_sim_tutorial/0.3.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/controller_manager
	ros-lunar/diff_drive_controller
	ros-lunar/gazebo_ros
	ros-lunar/gazebo_ros_control
	ros-lunar/joint_state_controller
	ros-lunar/position_controllers
	ros-lunar/robot_state_publisher
	ros-lunar/rqt_robot_steering
	ros-lunar/rviz
	ros-lunar/urdf_tutorial
	ros-lunar/xacro
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

