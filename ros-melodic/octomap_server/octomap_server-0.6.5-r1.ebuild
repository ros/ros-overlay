# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="octomap_server loads a 3D map \(as Octree-based OctoMap\) and distributes i[...]"
HOMEPAGE="http://www.ros.org/wiki/octomap_server"
SRC_URI="https://github.com/ros-gbp/octomap_mapping-release/archive/release/melodic/${PN}/0.6.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/nav_msgs
	ros-melodic/nodelet
	ros-melodic/octomap
	ros-melodic/octomap_msgs
	ros-melodic/octomap_ros
	ros-melodic/pcl_conversions
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/visualization_msgs
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
