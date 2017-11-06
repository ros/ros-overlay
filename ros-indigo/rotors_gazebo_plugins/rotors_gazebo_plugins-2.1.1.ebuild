# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The rotors_gazebo_plugins package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ethz-asl/rotors_simulator-release/archive/release/indigo/rotors_gazebo_plugins/2.1.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/gazebo_ros
	ros-indigo/geometry_msgs
	ros-indigo/mav_msgs
	ros-indigo/octomap
	ros-indigo/octomap_msgs
	ros-indigo/octomap_ros
	ros-indigo/rosbag
	ros-indigo/roscpp
	ros-indigo/rotors_comm
	ros-indigo/rotors_control
	ros-indigo/std_srvs
	ros-indigo/tf
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	sci-electronics/gazebo
	dev-libs/protobuf
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
