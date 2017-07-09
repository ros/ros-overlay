# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Officially supported rocon services for the concert framework.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/concert_services-release/archive/release/indigo/concert_services/0.1.12-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/concert_service_admin
	ros-indigo/concert_service_gazebo
	ros-indigo/concert_service_image_stream
	ros-indigo/concert_service_indoor_2d_map_prep
	ros-indigo/concert_service_teleop
	ros-indigo/concert_service_turtlesim
	ros-indigo/concert_service_waypoint_navigation
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

