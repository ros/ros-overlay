# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Autonomous Exploration package for a Turtulebot equiped with RGBD SensorKinect,"
HOMEPAGE="http://wiki.ros.org/turtlebot_exploration_3d"
SRC_URI="https://github.com/RobustFieldAutonomyLab/turtlebot_exploration_3d-release/archive/release/indigo/turtlebot_exploration_3d/0.0.9-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/move_base_msgs
	ros-indigo/octomap_rviz_plugins
	ros-indigo/turtlebot_navigation
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/geometry_msgs
	ros-indigo/octomap_msgs
	ros-indigo/octomap_ros
	ros-indigo/pcl_ros
	ros-indigo/roscpp
	ros-indigo/std_msgs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

