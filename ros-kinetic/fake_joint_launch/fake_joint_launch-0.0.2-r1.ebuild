# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Collection of the launch files for fake_joint_driver."
HOMEPAGE="http://wiki.ros.org/fake_joint_launch"
SRC_URI="https://github.com/tork-a/fake_joint-release/archive/release/kinetic/${PN}/0.0.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/abb_irb2400_support
	ros-kinetic/controller_manager
	ros-kinetic/denso_ros_control
	ros-kinetic/fake_joint_driver
	ros-kinetic/nextage_description
	ros-kinetic/pr2_description
	ros-kinetic/robot_state_publisher
	ros-kinetic/roslaunch
	ros-kinetic/rostest
	ros-kinetic/rviz
	ros-kinetic/tra1_description
	ros-kinetic/ur_description
	ros-kinetic/vs060
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
