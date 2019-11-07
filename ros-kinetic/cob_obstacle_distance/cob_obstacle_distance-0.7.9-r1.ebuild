# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_obstacle_distance package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/kinetic/${PN}/0.7.9-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/cob_control_msgs
	ros-kinetic/cob_srvs
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/eigen_conversions
	ros-kinetic/geometry_msgs
	ros-kinetic/interactive_markers
	ros-kinetic/joint_state_publisher
	ros-kinetic/kdl_conversions
	ros-kinetic/kdl_parser
	ros-kinetic/moveit_msgs
	ros-kinetic/orocos_kdl
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/roslint
	ros-kinetic/rospy
	ros-kinetic/rviz
	ros-kinetic/sensor_msgs
	ros-kinetic/shape_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/tf_conversions
	ros-kinetic/urdf
	ros-kinetic/visualization_msgs
	ros-kinetic/xacro
	media-libs/assimp
	dev-libs/boost[python]
	dev-cpp/eigen
	sci-libs/fcl
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
