# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rotors_gazebo_plugins package"
HOMEPAGE="https://github.com/ethz-asl/rotors_simulator"
SRC_URI="https://github.com/ethz-asl/rotors_simulator-release/archive/release/indigo/${PN}/2.2.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="ASL 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/cv_bridge
	ros-indigo/gazebo_plugins
	ros-indigo/gazebo_ros
	ros-indigo/geometry_msgs
	ros-indigo/mav_msgs
	ros-indigo/mavros
	ros-indigo/octomap
	ros-indigo/octomap_msgs
	ros-indigo/octomap_ros
	ros-indigo/rosbag
	ros-indigo/roscpp
	ros-indigo/rotors_comm
	ros-indigo/rotors_control
	ros-indigo/std_srvs
	ros-indigo/tf
	sci-electronics/gazebo
	dev-cpp/glog
	dev-libs/protobuf
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
