# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The fake_joint_driver package"
HOMEPAGE="http://wiki.ros.org/fake_joint_driver"
SRC_URI="https://github.com/tork-a/fake_joint-release/archive/release/melodic/${PN}/0.0.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/controller_manager
	ros-melodic/hardware_interface
	ros-melodic/joint_state_controller
	ros-melodic/joint_trajectory_controller
	ros-melodic/position_controllers
	ros-melodic/robot_state_publisher
	ros-melodic/roscpp
	ros-melodic/roslaunch
	ros-melodic/urdf
	ros-melodic/xacro
	test? ( ros-melodic/roslint )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
