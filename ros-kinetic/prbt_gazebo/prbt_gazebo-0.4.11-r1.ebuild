# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch prbt robot in an empty Gazebo world."
HOMEPAGE="https://wiki.ros.org/prbt_gazebo"
SRC_URI="https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/${PN}/0.4.11-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/gazebo_ros
	ros-kinetic/gazebo_ros_control
	ros-kinetic/prbt_moveit_config
	ros-kinetic/prbt_support
	ros-kinetic/roslaunch
	ros-kinetic/xacro
	test? ( ros-kinetic/actionlib )
	test? ( ros-kinetic/roscpp )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/trajectory_msgs )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
