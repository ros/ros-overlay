# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains the description \(mechanical, kinematic, visual,  etc[...]"
HOMEPAGE="http://ros.org/wiki/tra1_description"
SRC_URI="https://github.com/tork-a/minas-release/archive/release/indigo/${PN}/1.0.9-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( GPL-2 CC-BY-SA )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/joint_state_publisher
	ros-indigo/robot_state_publisher
	ros-indigo/rviz
	ros-indigo/tf
	ros-indigo/xacro
	test? ( ros-indigo/roslaunch )
	test? ( ros-indigo/rostest )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
