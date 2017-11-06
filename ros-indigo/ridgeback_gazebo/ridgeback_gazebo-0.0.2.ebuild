# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Launchfiles to use Ridgeback in Gazebo."
HOMEPAGE="http://wiki.ros.org/ridgeback_gazebo"
SRC_URI="https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/indigo/ridgeback_gazebo/0.0.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_plugins
	ros-indigo/gazebo_ros
	ros-indigo/gazebo_ros_control
	ros-indigo/hector_gazebo_plugins
	ros-indigo/ridgeback_control
	ros-indigo/ridgeback_description
	ros-indigo/ridgeback_gazebo_plugins
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
