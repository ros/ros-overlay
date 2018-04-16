# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Launchfiles to use Warthog in Gazebo."
HOMEPAGE="http://wiki.ros.org/warthog_gazebo"
SRC_URI="https://github.com/clearpath-gbp/warthog_simulator-release/archive/release/indigo/${PN}/0.0.1-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_plugins
	ros-indigo/gazebo_ros
	ros-indigo/gazebo_ros_control
	ros-indigo/hector_gazebo_plugins
	ros-indigo/joint_state_publisher
	ros-indigo/roscpp
	ros-indigo/warthog_control
	ros-indigo/warthog_description
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
