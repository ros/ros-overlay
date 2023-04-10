# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch files and other resources for simulating Leo Rover in Gazebo."
HOMEPAGE="http://wiki.ros.org/leo_gazebo"
SRC_URI="https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/melodic/${PN}/0.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/compressed_image_transport
	ros-melodic/diff_drive_controller
	ros-melodic/gazebo_dev
	ros-melodic/gazebo_plugins
	ros-melodic/gazebo_ros
	ros-melodic/gazebo_ros_control
	ros-melodic/geometry_msgs
	ros-melodic/joint_state_controller
	ros-melodic/leo_description
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/topic_tools
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
