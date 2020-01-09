# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Driver module between Aldebaran\'s NAOqiOS and ROS. It publishes all sensor[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/${PN}-release/archive/release/melodic/${PN}/0.5.11-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/image_transport
	ros-melodic/kdl_parser
	ros-melodic/naoqi_bridge_msgs
	ros-melodic/naoqi_libqi
	ros-melodic/naoqi_libqicore
	ros-melodic/orocos_kdl
	ros-melodic/robot_state_publisher
	ros-melodic/rosbag_storage
	ros-melodic/rosconsole
	ros-melodic/tf2_ros
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/geometry_msgs
	ros-melodic/rosgraph_msgs
	ros-melodic/sensor_msgs
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
