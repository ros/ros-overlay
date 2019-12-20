# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Collection of the launch files for fake_joint_driver."
HOMEPAGE="http://wiki.ros.org/fake_joint_launch"
SRC_URI="https://github.com/tork-a/fake_joint-release/archive/release/melodic/${PN}/0.0.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/abb_irb2400_support
	ros-melodic/controller_manager
	ros-melodic/fake_joint_driver
	ros-melodic/pr2_description
	ros-melodic/robot_state_publisher
	ros-melodic/roslaunch
	ros-melodic/rostest
	ros-melodic/rviz
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
