# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="URDF description for Universal UR3\(e\), UR5\(e\), UR10\(e\), UR16e, UR20 a[...]"
HOMEPAGE="http://wiki.ros.org/ur_description"
SRC_URI="https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/${PN}/1.3.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="( BSD Universal Robots A/S' Terms and Conditions for Use of Graphical Documentation Universal Robots A/S' Terms and Conditions for Use of Graphical Documentation )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/joint_state_publisher_gui
	ros-noetic/robot_state_publisher
	ros-noetic/rviz
	ros-noetic/urdf
	ros-noetic/xacro
	test? ( ros-noetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
