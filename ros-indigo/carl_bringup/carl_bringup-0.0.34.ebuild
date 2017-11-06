# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="CARL Bringup Launch Scripts"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/carl_bot-release/archive/release/indigo/carl_bringup/0.0.34-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/carl_description
	ros-indigo/carl_dynamixel
	ros-indigo/carl_interactive_manipulation
	ros-indigo/carl_moveit
	ros-indigo/carl_safety
	ros-indigo/carl_teleop
	ros-indigo/m4atx_battery_monitor
	ros-indigo/openni2_launch
	ros-indigo/rail_recognition
	ros-indigo/rail_segmentation
	ros-indigo/ros_ethernet_rmp
	ros-indigo/urg_node
	ros-indigo/world_item_observer
	ros-indigo/wpi_jaco_wrapper
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
