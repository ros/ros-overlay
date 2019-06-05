# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS node to build a 3D map of fiducials and estimate robot pose from fiduci[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/melodic/${PN}/0.11.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/dynamic_reconfigure
	ros-melodic/fiducial_msgs
	ros-melodic/image_transport
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/tf2
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_ros
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
