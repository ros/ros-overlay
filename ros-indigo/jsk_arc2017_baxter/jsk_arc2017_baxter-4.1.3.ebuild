# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Baxter-specific programs for Amazon Robotics Challenge 2017 at JSK Lab."
HOMEPAGE="http://wiki.ros.org/jsk_arc2017_baxter"
SRC_URI="https://github.com/tork-a/jsk_apc-release/archive/release/indigo/jsk_arc2017_baxter/4.1.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib_msgs
	ros-indigo/baxter_core_msgs
	ros-indigo/controller_manager
	ros-indigo/dynamixel_msgs
	ros-indigo/hardware_interface
	ros-indigo/joint_trajectory_controller
	ros-indigo/jsk_2015_05_baxter_apc
	ros-indigo/jsk_2016_01_baxter_apc
	ros-indigo/jsk_apc2015_common
	ros-indigo/jsk_apc2016_common
	ros-indigo/jsk_arc2017_common
	ros-indigo/jsk_baxter_startup
	ros-indigo/jsk_data
	ros-indigo/jsk_interactive_marker
	ros-indigo/jsk_perception
	ros-indigo/jsk_recognition_utils
	ros-indigo/jsk_rqt_plugins
	ros-indigo/jsk_rviz_plugins
	ros-indigo/jsk_topic_tools
	ros-indigo/message_runtime
	ros-indigo/robot_state_publisher
	ros-indigo/roseus_smach
	ros-indigo/rospy
	ros-indigo/rosserial_python
	ros-indigo/smach_viewer
	ros-indigo/std_msgs
	ros-indigo/transmission_interface
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/roseus
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
