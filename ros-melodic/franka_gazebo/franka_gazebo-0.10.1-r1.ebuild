# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package offers the FrankaHWSim Class to simulate a Franka Robot in Gazebo"
HOMEPAGE="http://wiki.ros.org/franka_gazebo"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/melodic/${PN}/0.10.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/angles
	ros-melodic/boost_sml
	ros-melodic/control_msgs
	ros-melodic/control_toolbox
	ros-melodic/controller_interface
	ros-melodic/controller_manager
	ros-melodic/eigen_conversions
	ros-melodic/franka_example_controllers
	ros-melodic/franka_gripper
	ros-melodic/franka_hw
	ros-melodic/franka_msgs
	ros-melodic/gazebo_ros
	ros-melodic/gazebo_ros_control
	ros-melodic/hardware_interface
	ros-melodic/joint_limits_interface
	ros-melodic/kdl_parser
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/roslaunch
	ros-melodic/rospy
	ros-melodic/std_msgs
	ros-melodic/transmission_interface
	ros-melodic/urdf
	test? ( ros-melodic/geometry_msgs )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/sensor_msgs )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/gazebo_dev
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
