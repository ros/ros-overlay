# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains tools used to benchmark both constrianed_ik and stomp."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/industrial_moveit-release/archive/release/indigo/industrial_moveit_benchmarking/0.1.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/constrained_ik
	ros-indigo/industrial_collision_detection
	ros-indigo/moveit_core
	ros-indigo/moveit_ros_planning
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/stomp_moveit
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
