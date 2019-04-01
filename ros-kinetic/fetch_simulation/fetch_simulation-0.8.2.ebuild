# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Fetch Simulation, packages for working with Fetch and Freight in Gazebo"
HOMEPAGE="https://docs.fetchrobotics.com/gazebo.html"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/kinetic/${PN}/0.8.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/fetch_gazebo
	ros-kinetic/fetch_gazebo_demo
	ros-kinetic/fetchit_challenge
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
