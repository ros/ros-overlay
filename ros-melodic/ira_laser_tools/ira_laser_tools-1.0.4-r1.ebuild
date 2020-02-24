# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ira_laser_tools package. These nodes are meant to provide some utils fo[...]"
HOMEPAGE="http://www.ros.org/wiki/ira_laser_tools"
SRC_URI="https://github.com/iralabdisco/${PN}-release/archive/release/melodic/${PN}/1.0.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/laser_geometry
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	sci-libs/pcl
	sci-libs/vtk[qt5,rendering]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
