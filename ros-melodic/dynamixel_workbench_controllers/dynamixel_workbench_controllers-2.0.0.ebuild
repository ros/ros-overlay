# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains examples of applying the \'dynamixel_workbench_toolbo[...]"
HOMEPAGE="http://wiki.ros.org/dynamixel_workbench_controllers"
SRC_URI="https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/melodic/${PN}/2.0.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/dynamixel_workbench_msgs
	ros-melodic/dynamixel_workbench_toolbox
	ros-melodic/geometry_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/trajectory_msgs
	dev-cpp/eigen
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
