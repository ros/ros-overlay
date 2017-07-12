# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Driver module between Aldebarans NAOqiOS and ROS It publishes all sensor and a"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/naoqi_driver-release/archive/release/indigo/naoqi_driver/0.5.9-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/image_transport
	ros-indigo/kdl_parser
	ros-indigo/naoqi_bridge_msgs
	ros-indigo/naoqi_libqi
	ros-indigo/naoqi_libqicore
	ros-indigo/orocos_kdl
	ros-indigo/robot_state_publisher
	ros-indigo/rosbag_storage
	ros-indigo/tf2_ros
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/geometry_msgs
	ros-indigo/rosgraph_msgs
	ros-indigo/sensor_msgs
	ros-indigo/tf2_geometry_msgs
	ros-indigo/tf2_msgs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

