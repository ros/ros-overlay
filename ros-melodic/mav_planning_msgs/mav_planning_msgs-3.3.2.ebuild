# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Messages specific to MAV planning, especially polynomial planning."
HOMEPAGE="https://github.com/ethz-asl/mav_comm"
SRC_URI="https://github.com/ethz-asl/mav_comm-release/archive/release/melodic/${PN}/3.3.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="ASL 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/geometry_msgs
	ros-melodic/mav_msgs
	ros-melodic/message_generation
	ros-melodic/message_runtime
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/trajectory_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
