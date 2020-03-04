# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ifm pmd-based 3D ToF Camera ROS package"
HOMEPAGE="https://github.com/lovepark/ifm3d-ros"
SRC_URI="https://github.com/ifm/${PN}-ros-release/archive/release/melodic/${PN}/0.6.2-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/ifm3d_core
	ros-melodic/image_transport
	ros-melodic/message_generation
	ros-melodic/nodelet
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
