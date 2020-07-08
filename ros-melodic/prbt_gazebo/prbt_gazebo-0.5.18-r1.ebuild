# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch prbt robot in an empty Gazebo world."
HOMEPAGE="https://wiki.ros.org/prbt_gazebo"
SRC_URI="https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/${PN}/0.5.18-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/gazebo_ros
	ros-melodic/gazebo_ros_control
	ros-melodic/prbt_moveit_config
	ros-melodic/prbt_support
	ros-melodic/roslaunch
	ros-melodic/xacro
	test? ( ros-melodic/actionlib )
	test? ( ros-melodic/roscpp )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/trajectory_msgs )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
