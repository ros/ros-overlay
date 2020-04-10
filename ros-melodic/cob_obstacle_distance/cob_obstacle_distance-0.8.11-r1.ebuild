# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_obstacle_distance package calculates distances between both robot l[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/melodic/${PN}/0.8.11-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cob_control_msgs
	ros-melodic/cob_srvs
	ros-melodic/dynamic_reconfigure
	ros-melodic/eigen_conversions
	ros-melodic/geometry_msgs
	ros-melodic/interactive_markers
	ros-melodic/joint_state_publisher
	ros-melodic/kdl_conversions
	ros-melodic/kdl_parser
	ros-melodic/moveit_msgs
	ros-melodic/orocos_kdl
	ros-melodic/robot_state_publisher
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/roslint
	ros-melodic/rospy
	ros-melodic/rviz
	ros-melodic/sensor_msgs
	ros-melodic/shape_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/tf_conversions
	ros-melodic/urdf
	ros-melodic/visualization_msgs
	ros-melodic/xacro
	media-libs/assimp
	dev-libs/boost[python]
	dev-cpp/eigen
	sci-libs/fcl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
