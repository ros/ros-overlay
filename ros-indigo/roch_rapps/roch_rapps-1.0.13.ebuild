# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The roch_rapps package for set of app manager apps definition"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch-release/archive/release/indigo/roch_rapps/1.0.13-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/compressed_image_transport
	ros-indigo/nodelet
	ros-indigo/robot_pose_publisher
	ros-indigo/roch_bringup
	ros-indigo/roch_follower
	ros-indigo/roch_navigation
	ros-indigo/roch_teleop
	ros-indigo/tf
	ros-indigo/topic_tools
	ros-indigo/warehouse_ros
	ros-indigo/world_canvas_server
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

