# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="This package contains a number of URDF tutorials."
HOMEPAGE="http://ros.org/wiki/urdf_tutorial"
SRC_URI="https://github.com/ros-gbp/urdf_tutorial-release/archive/release/lunar/urdf_tutorial/0.2.5-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/controller_manager
	ros-lunar/diff_drive_controller
	ros-lunar/gazebo_ros
	ros-lunar/gazebo_ros_control
	ros-lunar/joint_state_controller
	ros-lunar/joint_state_publisher
	ros-lunar/position_controllers
	ros-lunar/robot_state_publisher
	ros-lunar/rqt_robot_steering
	ros-lunar/rviz
	ros-lunar/urdf
	ros-lunar/xacro
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/roslaunch
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

