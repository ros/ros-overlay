# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The rb1_base_gazebo package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RobotnikAutomation/rb1_base_sim-release/archive/release/indigo/rb1_base_gazebo/1.0.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_ros
	ros-indigo/gazebo_ros_control
	ros-indigo/rb1_base_control
	ros-indigo/rb1_base_description
	ros-indigo/rb1_base_pad
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

