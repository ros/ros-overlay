# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'hector_quadrotor_gazebo_plugins provides gazebo plugins for using quadrotors in '"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_quadrotor-release/archive/release/indigo/hector_quadrotor_gazebo_plugins/0.3.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gazebo_ros
	ros-indigo/geometry_msgs
	ros-indigo/hector_gazebo_plugins
	ros-indigo/hector_quadrotor_model
	ros-indigo/hector_uav_msgs
	ros-indigo/roscpp
	ros-indigo/std_srvs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	sci-electronics/gazebo
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

