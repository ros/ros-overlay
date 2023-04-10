# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Scripts and launch files for starting basic Leo Rover functionalities."
HOMEPAGE="http://wiki.ros.org/leo_bringup"
SRC_URI="https://github.com/fictionlab-gbp/leo_robot-release/archive/release/melodic/${PN}/1.2.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/leo_description
	ros-melodic/robot_state_publisher
	ros-melodic/rosbridge_server
	ros-melodic/rosserial_python
	ros-melodic/sensor_msgs
	ros-melodic/web_video_server
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
