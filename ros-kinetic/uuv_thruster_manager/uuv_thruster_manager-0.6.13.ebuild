# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The thruster manager package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/${PN}/0.6.13-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/uuv_assistants
	ros-kinetic/uuv_gazebo_ros_plugins_msgs
	test? ( ros-kinetic/geometry_msgs )
	test? ( ros-kinetic/joint_state_publisher )
	test? ( ros-kinetic/robot_state_publisher )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rosunit )
	test? ( ros-kinetic/uuv_assistants )
	test? ( ros-kinetic/xacro )
	dev-python/pyyaml
	test? ( dev-python/numpy )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
