# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Example launchfiles for working with the Grizzly simulator"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/grizzly_simulator-release/archive/release/indigo/grizzly_gazebo/0.2.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_ros
	ros-indigo/grizzly_description
	ros-indigo/grizzly_gazebo_plugins
	ros-indigo/grizzly_motion
	ros-indigo/grizzly_navigation
	ros-indigo/hector_gazebo_plugins
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/grizzly_msgs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

