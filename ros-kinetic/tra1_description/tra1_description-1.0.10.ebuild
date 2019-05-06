# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains the description \(mechanical, kinematic, visual,  etc[...]"
HOMEPAGE="http://ros.org/wiki/tra1_description"
SRC_URI="https://github.com/tork-a/minas-release/archive/release/kinetic/${PN}/1.0.10-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( GPL-2 CC-BY-SA )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/joint_state_publisher
	ros-kinetic/robot_state_publisher
	ros-kinetic/rviz
	ros-kinetic/tf
	ros-kinetic/xacro
	test? ( ros-kinetic/roslaunch )
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
