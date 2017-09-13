# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Programming by demonstration for 1 or 2 arm robots"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/jstnhuang-release/rapid_pbd-release/archive/release/indigo/rapid_pbd/0.1.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/control_msgs
	ros-indigo/depthcloud_encoder
	ros-indigo/geometry_msgs
	ros-indigo/mongodb_store
	ros-indigo/moveit_core
	ros-indigo/moveit_goal_builder
	ros-indigo/moveit_msgs
	ros-indigo/moveit_ros_planning
	ros-indigo/moveit_ros_planning_interface
	ros-indigo/pcl_ros
	ros-indigo/pr2_controllers_msgs
	ros-indigo/pr2_mechanism_msgs
	ros-indigo/rapid_pbd_msgs
	ros-indigo/robot_controllers_msgs
	ros-indigo/robot_markers
	ros-indigo/ros_web_video
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/shape_msgs
	ros-indigo/std_msgs
	ros-indigo/surface_perception
	ros-indigo/tf
	ros-indigo/trajectory_msgs
	ros-indigo/transform_graph
	ros-indigo/urdf
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

