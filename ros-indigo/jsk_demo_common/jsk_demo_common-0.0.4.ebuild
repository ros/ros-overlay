# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The jsk_demo_common package'"
HOMEPAGE="http://wiki.ros.org/jsk_demo_common"
SRC_URI="https://github.com/tork-a/jsk_demos-release/archive/release/indigo/jsk_demo_common/0.0.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/control_msgs
	ros-indigo/joint_state_publisher
	ros-indigo/jsk_hark_msgs
	ros-indigo/jsk_maps
	ros-indigo/jsk_perception
	ros-indigo/message_runtime
	ros-indigo/pddl_planner
	ros-indigo/pr2_gripper_sensor_msgs
	ros-indigo/pr2_navigation_self_filter
	ros-indigo/pr2eus
	ros-indigo/robot_state_publisher
	ros-indigo/roseus
	ros-indigo/roseus_mongo
	ros-indigo/roseus_smach
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

