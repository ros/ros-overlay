# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Robot description files for the LAUV."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/lauv_gazebo-release/archive/release/kinetic/${PN}/0.1.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/gazebo_ros
	ros-kinetic/robot_state_publisher
	ros-kinetic/uuv_assistants
	ros-kinetic/uuv_descriptions
	ros-kinetic/uuv_gazebo_ros_plugins
	ros-kinetic/uuv_sensor_ros_plugins
	ros-kinetic/xacro
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rosunit )
	test? ( ros-kinetic/xacro )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
