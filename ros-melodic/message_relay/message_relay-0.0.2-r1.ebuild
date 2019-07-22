# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package to programmatically spawn message, service, and action relays. To a[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/melodic/${PN}/0.0.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib_msgs
	ros-melodic/controller_manager_msgs
	ros-melodic/diagnostic_msgs
	ros-melodic/gazebo_msgs
	ros-melodic/geometry_msgs
	ros-melodic/map_msgs
	ros-melodic/move_base_msgs
	ros-melodic/multimaster_msgs
	ros-melodic/nav_msgs
	ros-melodic/robot_localization
	ros-melodic/roscpp
	ros-melodic/rosgraph_msgs
	ros-melodic/sensor_msgs
	ros-melodic/shape_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/stereo_msgs
	ros-melodic/tf2_msgs
	ros-melodic/trajectory_msgs
	ros-melodic/visualization_msgs
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/roslint )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-python/cheetah
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
