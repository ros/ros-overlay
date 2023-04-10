# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Scripts and launch files for starting basic Leo Rover functionalities."
HOMEPAGE="http://wiki.ros.org/leo_bringup"
SRC_URI="https://github.com/ros2-gbp/leo_robot-release/archive/release/humble/${PN}/1.3.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/image_proc
	ros-humble/leo_description
	ros-humble/leo_fw
	ros-humble/robot_state_publisher
	ros-humble/rosapi
	ros-humble/rosbridge_server
	ros-humble/sensor_msgs
	ros-humble/v4l2_camera
	ros-humble/xacro
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
