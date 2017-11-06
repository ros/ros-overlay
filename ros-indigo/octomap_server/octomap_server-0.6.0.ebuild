# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="octomap_server loads a 3D map \(as Octree-based OctoMap\) and distributes i[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/octomap_mapping-release/archive/release/indigo/octomap_server/0.6.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/nav_msgs
	ros-indigo/nodelet
	ros-indigo/octomap
	ros-indigo/octomap_msgs
	ros-indigo/octomap_ros
	ros-indigo/pcl_conversions
	ros-indigo/pcl_ros
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/visualization_msgs
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	sci-libs/pcl
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
