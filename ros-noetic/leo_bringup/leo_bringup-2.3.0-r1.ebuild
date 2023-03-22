# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Scripts and launch files for starting basic Leo Rover functionalities."
HOMEPAGE="http://wiki.ros.org/leo_bringup"
SRC_URI="https://github.com/fictionlab-gbp/leo_robot-release/archive/release/noetic/${PN}/2.3.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/leo_description
	ros-noetic/leo_fw
	ros-noetic/robot_state_publisher
	ros-noetic/rosapi
	ros-noetic/rosbridge_server
	ros-noetic/rosserial_python
	ros-noetic/sensor_msgs
	ros-noetic/web_video_server
	ros-noetic/xacro
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
