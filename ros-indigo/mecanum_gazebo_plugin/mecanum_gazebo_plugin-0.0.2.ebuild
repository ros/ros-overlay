# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Plugin which uses directional friction to simulate mecanum wheels.'"
HOMEPAGE="http://wiki.ros.org/mecanum_gazebo_plugin"
SRC_URI="https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/indigo/mecanum_gazebo_plugin/0.0.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosconsole
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslint
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

