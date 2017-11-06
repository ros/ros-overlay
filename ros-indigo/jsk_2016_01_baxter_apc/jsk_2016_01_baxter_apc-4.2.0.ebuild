# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Common stacks for Amazon Picking Challenge 2016"
HOMEPAGE="http://wiki.ros.org/jsk_2016_01_baxter_apc"
SRC_URI="https://github.com/tork-a/jsk_apc-release/archive/release/indigo/jsk_2016_01_baxter_apc/4.2.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/baxter_core_msgs
	ros-indigo/baxter_gazebo
	ros-indigo/baxter_sim_controllers
	ros-indigo/baxter_sim_io
	ros-indigo/control_msgs
	ros-indigo/controller_manager
	ros-indigo/dynamixel_controllers
	ros-indigo/dynamixel_msgs
	ros-indigo/gazebo_ros
	ros-indigo/hardware_interface
	ros-indigo/jsk_2015_05_baxter_apc
	ros-indigo/jsk_apc2016_common
	ros-indigo/jsk_baxter_startup
	ros-indigo/jsk_data
	ros-indigo/jsk_interactive_marker
	ros-indigo/jsk_recognition_msgs
	ros-indigo/roscpp
	ros-indigo/roseus_mongo
	ros-indigo/rosserial_python
	ros-indigo/std_msgs
	ros-indigo/transmission_interface
"
DEPEND="${RDEPEND}
	ros-indigo/baxter_description
	ros-indigo/catkin
	ros-indigo/collada_urdf
	ros-indigo/euscollada
	ros-indigo/roseus
	ros-indigo/xacro
	dev-lang/ruby
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
