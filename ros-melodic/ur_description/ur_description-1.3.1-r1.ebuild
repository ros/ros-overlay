# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="URDF description for Universal UR3\(e\), UR5\(e\), UR10\(e\) and UR16e robots"
HOMEPAGE="http://wiki.ros.org/ur_description"
SRC_URI="https://github.com/ros-industrial-release/universal_robot-release/archive/release/melodic/${PN}/1.3.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/joint_state_publisher_gui
	ros-melodic/robot_state_publisher
	ros-melodic/rviz
	ros-melodic/urdf
	ros-melodic/xacro
	test? ( ros-melodic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
