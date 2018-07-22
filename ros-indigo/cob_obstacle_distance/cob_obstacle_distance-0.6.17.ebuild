# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_obstacle_distance package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/indigo/${PN}/0.6.17-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/cob_control_msgs
	ros-indigo/cob_srvs
	ros-indigo/dynamic_reconfigure
	ros-indigo/eigen_conversions
	ros-indigo/fcl
	ros-indigo/geometry_msgs
	ros-indigo/interactive_markers
	ros-indigo/joint_state_publisher
	ros-indigo/kdl_conversions
	ros-indigo/kdl_parser
	ros-indigo/moveit_msgs
	ros-indigo/orocos_kdl
	ros-indigo/robot_state_publisher
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/roslint
	ros-indigo/rospy
	ros-indigo/rviz
	ros-indigo/sensor_msgs
	ros-indigo/shape_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/tf_conversions
	ros-indigo/urdf
	ros-indigo/visualization_msgs
	ros-indigo/xacro
	media-libs/assimp
	dev-libs/boost
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
