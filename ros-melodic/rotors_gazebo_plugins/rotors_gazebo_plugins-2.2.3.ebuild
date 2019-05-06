# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rotors_gazebo_plugins package"
HOMEPAGE="https://github.com/ethz-asl/rotors_simulator"
SRC_URI="https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/${PN}/2.2.3-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="ASL 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/cv_bridge
	ros-melodic/gazebo_plugins
	ros-melodic/gazebo_ros
	ros-melodic/geometry_msgs
	ros-melodic/mav_msgs
	ros-melodic/mavros
	ros-melodic/octomap
	ros-melodic/octomap_msgs
	ros-melodic/octomap_ros
	ros-melodic/rosbag
	ros-melodic/roscpp
	ros-melodic/rotors_comm
	ros-melodic/rotors_control
	ros-melodic/std_srvs
	ros-melodic/tf
	sci-electronics/gazebo
	dev-cpp/glog
	dev-libs/protobuf
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
