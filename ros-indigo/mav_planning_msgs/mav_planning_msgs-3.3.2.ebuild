# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Messages specific to MAV planning, especially polynomial planning."
HOMEPAGE="https://github.com/ethz-asl/mav_comm"
SRC_URI="https://github.com/ethz-asl/mav_comm-release/archive/release/indigo/${PN}/3.3.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="ASL 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/geometry_msgs
	ros-indigo/mav_msgs
	ros-indigo/message_generation
	ros-indigo/message_runtime
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/trajectory_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
