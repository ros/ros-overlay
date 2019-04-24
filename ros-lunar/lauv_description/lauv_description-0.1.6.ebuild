# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Robot description files for the LAUV."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/lauv_gazebo-release/archive/release/lunar/${PN}/0.1.6-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/gazebo_ros
	ros-lunar/robot_state_publisher
	ros-lunar/uuv_assistants
	ros-lunar/uuv_descriptions
	ros-lunar/uuv_gazebo_ros_plugins
	ros-lunar/uuv_sensor_ros_plugins
	ros-lunar/xacro
	test? ( ros-lunar/rostest )
	test? ( ros-lunar/rosunit )
	test? ( ros-lunar/xacro )
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
