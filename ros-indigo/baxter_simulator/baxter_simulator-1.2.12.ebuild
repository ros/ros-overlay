# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Metapackage - Baxter Research Robot Gazebo Simulation"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RethinkRobotics-release/baxter_simulator-release/archive/release/indigo/baxter_simulator/1.2.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/baxter_gazebo
	ros-indigo/baxter_sim_controllers
	ros-indigo/baxter_sim_examples
	ros-indigo/baxter_sim_hardware
	ros-indigo/baxter_sim_io
	ros-indigo/baxter_sim_kinematics
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
