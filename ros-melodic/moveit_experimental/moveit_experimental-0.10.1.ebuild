# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Experimental packages for moveit."
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/melodic/${PN}/0.10.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib_msgs
	ros-melodic/eigen_stl_containers
	ros-melodic/geometric_shapes
	ros-melodic/geometry_msgs
	ros-melodic/kdl_parser
	ros-melodic/moveit_core
	ros-melodic/moveit_msgs
	ros-melodic/octomap
	ros-melodic/octomap_msgs
	ros-melodic/pluginlib
	ros-melodic/rosconsole
	ros-melodic/rostime
	ros-melodic/sensor_msgs
	ros-melodic/shape_msgs
	ros-melodic/std_msgs
	ros-melodic/tf2_eigen
	ros-melodic/trajectory_msgs
	ros-melodic/visualization_msgs
	test? ( ros-melodic/angles )
	test? ( ros-melodic/moveit_resources )
	test? ( ros-melodic/orocos_kdl )
	media-libs/assimp
	dev-libs/boost
	dev-cpp/eigen
	dev-libs/console_bridge
	dev-libs/urdfdom
	dev-libs/urdfdom_headers
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/roslib
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
