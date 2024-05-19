# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The cob_obstacle_distance package calculates distances between both robot l[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/4am-robotics/cob_control-release/archive/release/noetic/${PN}/0.8.24-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_control_msgs
	ros-noetic/cob_srvs
	ros-noetic/dynamic_reconfigure
	ros-noetic/eigen_conversions
	ros-noetic/fcl
	ros-noetic/geometry_msgs
	ros-noetic/interactive_markers
	ros-noetic/joint_state_publisher
	ros-noetic/kdl_conversions
	ros-noetic/kdl_parser
	ros-noetic/moveit_msgs
	ros-noetic/robot_state_publisher
	ros-noetic/roscpp
	ros-noetic/roslib
	ros-noetic/roslint
	ros-noetic/rospy
	ros-noetic/rviz
	ros-noetic/sensor_msgs
	ros-noetic/shape_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/tf_conversions
	ros-noetic/urdf
	ros-noetic/visualization_msgs
	ros-noetic/xacro
	media-libs/assimp
	dev-libs/boost[python]
	dev-cpp/eigen
	sci-libs/libccd
	sci-libs/fcl
	sci-libs/orocos_kdl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
