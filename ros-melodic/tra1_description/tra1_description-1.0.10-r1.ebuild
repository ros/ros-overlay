# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains the description \(mechanical, kinematic, visual,  etc[...]"
HOMEPAGE="http://ros.org/wiki/tra1_description"
SRC_URI="https://github.com/tork-a/minas-release/archive/release/melodic/${PN}/1.0.10-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( GPL-2.0-only CC-BY-SA )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/joint_state_publisher
	ros-melodic/robot_state_publisher
	ros-melodic/rviz
	ros-melodic/tf
	ros-melodic/xacro
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
