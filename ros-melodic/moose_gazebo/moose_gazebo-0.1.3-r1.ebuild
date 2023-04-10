# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch files to use Moose in Gazebo."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/moose_simulator-release/archive/release/melodic/${PN}/0.1.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/controller_manager
	ros-melodic/gazebo_plugins
	ros-melodic/gazebo_ros
	ros-melodic/gazebo_ros_control
	ros-melodic/hector_gazebo_plugins
	ros-melodic/joint_state_publisher
	ros-melodic/moose_control
	ros-melodic/moose_description
	ros-melodic/robot_localization
	ros-melodic/robot_state_publisher
	test? ( ros-melodic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
