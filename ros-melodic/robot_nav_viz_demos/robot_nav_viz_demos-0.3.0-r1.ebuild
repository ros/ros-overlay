# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Demos for testing/demonstrating the robot_nav_rviz_plugins and color_util p[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DLu/robot_navigation-release/archive/release/melodic/${PN}/0.3.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/angles
	ros-melodic/color_util
	ros-melodic/geometry_msgs
	ros-melodic/nav_2d_msgs
	ros-melodic/nav_2d_utils
	ros-melodic/nav_grid
	ros-melodic/nav_grid_iterators
	ros-melodic/nav_grid_pub_sub
	ros-melodic/pluginlib
	ros-melodic/robot_nav_rviz_plugins
	ros-melodic/rosbag
	ros-melodic/roscpp
	ros-melodic/rviz
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/roslint )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
