# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Point cloud conversions for rslidar 3D LIDARs."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/CPFL/robosense-release/archive/release/melodic/${PN}/1.0.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/angles
	ros-melodic/dynamic_reconfigure
	ros-melodic/nodelet
	ros-melodic/pcl_ros
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/rslidar_driver
	ros-melodic/rslidar_msgs
	ros-melodic/sensor_msgs
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/pcl_conversions
	ros-melodic/roslaunch
	ros-melodic/rostest
	ros-melodic/tf2_ros
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
