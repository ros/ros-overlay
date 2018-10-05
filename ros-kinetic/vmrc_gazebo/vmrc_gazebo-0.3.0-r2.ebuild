# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ROS package for the RobotX competition running in Gazebo."
HOMEPAGE="http://wiki.ros.org/vmrc_gazebo"
SRC_URI="https://github.com/ros-gbp/vmrc-release/archive/release/kinetic/${PN}/0.3.0-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/gazebo_dev
	ros-kinetic/gazebo_ros
	ros-kinetic/std_msgs
	ros-kinetic/wamv_gazebo
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
