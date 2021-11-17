# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Launch prbt robot in an empty Gazebo world."
HOMEPAGE="https://wiki.ros.org/prbt_gazebo"
SRC_URI="https://github.com/PilzDE/pilz_robots-release/archive/release/noetic/${PN}/0.6.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/gazebo_ros
	ros-noetic/gazebo_ros_control
	ros-noetic/prbt_moveit_config
	ros-noetic/prbt_support
	ros-noetic/roslaunch
	ros-noetic/xacro
	test? ( ros-noetic/actionlib )
	test? ( ros-noetic/roscpp )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/trajectory_msgs )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
