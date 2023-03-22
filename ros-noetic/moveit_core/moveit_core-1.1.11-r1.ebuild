# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Core libraries used by MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/noetic/${PN}/1.1.11-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/eigen_stl_containers
	ros-noetic/fcl
	ros-noetic/geometric_shapes
	ros-noetic/geometry_msgs
	ros-noetic/kdl_parser
	ros-noetic/moveit_msgs
	ros-noetic/octomap
	ros-noetic/octomap_msgs
	ros-noetic/pluginlib
	ros-noetic/pybind11_catkin
	ros-noetic/random_numbers
	ros-noetic/rosconsole
	ros-noetic/roslib
	ros-noetic/rostime
	ros-noetic/ruckig
	ros-noetic/sensor_msgs
	ros-noetic/shape_msgs
	ros-noetic/srdfdom
	ros-noetic/std_msgs
	ros-noetic/tf2_eigen
	ros-noetic/tf2_geometry_msgs
	ros-noetic/trajectory_msgs
	ros-noetic/urdf
	ros-noetic/visualization_msgs
	ros-noetic/xmlrpcpp
	test? ( ros-noetic/angles )
	test? ( ros-noetic/moveit_resources_panda_moveit_config )
	test? ( ros-noetic/moveit_resources_pr2_description )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
	test? ( ros-noetic/tf2_kdl )
	media-libs/assimp
	dev-libs/boost[python]
	sci-physics/bullet
	dev-cpp/eigen
	dev-libs/console_bridge
	dev-libs/urdfdom
	dev-libs/urdfdom_headers
	dev-lang/python
	test? ( sci-libs/orocos_kdl )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
