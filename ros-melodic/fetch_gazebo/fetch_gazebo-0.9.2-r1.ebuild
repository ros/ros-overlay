# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Gazebo package for Fetch."
HOMEPAGE="http://ros.org/wiki/fetch_gazebo"
SRC_URI="https://github.com/fetchrobotics-gbp/${PN}-release/archive/release/melodic/${PN}/0.9.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/control_msgs
	ros-melodic/control_toolbox
	ros-melodic/depth_image_proc
	ros-melodic/fetch_description
	ros-melodic/gazebo_plugins
	ros-melodic/gazebo_ros
	ros-melodic/image_proc
	ros-melodic/nodelet
	ros-melodic/rgbd_launch
	ros-melodic/robot_controllers
	ros-melodic/robot_controllers_interface
	ros-melodic/sensor_msgs
	ros-melodic/trajectory_msgs
	ros-melodic/xacro
	dev-libs/boost[python]
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-melodic/angles
	ros-melodic/catkin
	ros-melodic/gazebo_dev
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
