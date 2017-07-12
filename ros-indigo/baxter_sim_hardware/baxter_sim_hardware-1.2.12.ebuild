# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Publishes the state information and emulates few hardware interfaces for use wit"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RethinkRobotics-release/baxter_simulator-release/archive/release/indigo/baxter_sim_hardware/1.2.12-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/baxter_core_msgs
	ros-indigo/baxter_sim_kinematics
	ros-indigo/controller_manager
	ros-indigo/cv_bridge
	ros-indigo/image_transport
	ros-indigo/roscpp
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/std_msgs
	ros-indigo/tf
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

