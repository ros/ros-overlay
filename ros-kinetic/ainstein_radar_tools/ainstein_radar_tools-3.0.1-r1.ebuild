# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Tools for monitoring and validating radar data."
HOMEPAGE="https://ainstein.ai/"
SRC_URI="https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/${PN}/3.0.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ainstein_radar_filters
	ros-kinetic/ainstein_radar_msgs
	ros-kinetic/cv_bridge
	ros-kinetic/image_geometry
	ros-kinetic/image_transport
	ros-kinetic/pcl_ros
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/vision_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
