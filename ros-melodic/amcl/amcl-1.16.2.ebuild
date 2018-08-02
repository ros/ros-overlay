# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>\
			amcl is a probabilistic localization system for a robot mo[...]"
HOMEPAGE="http://wiki.ros.org/amcl"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/melodic/${PN}/1.16.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/nav_msgs
	ros-melodic/rosbag
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_srvs
	ros-melodic/tf2
	ros-melodic/tf2_msgs
	ros-melodic/tf2_ros
	test? ( ros-melodic/map_server )
	test? ( ros-melodic/python_orocos_kdl )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_filters
	ros-melodic/tf2_geometry_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
