# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="evarobot_slam provides roslaunch scripts for SLAM map building with the Evarobot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/inomuh/evapc_ros-release/archive/release/indigo/evarobot_slam/0.0.6-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/evapc_start
	ros-indigo/evarobot_diagnostics
	ros-indigo/evarobot_pose_ekf
	ros-indigo/evarobot_state_publisher
	ros-indigo/hector_geotiff
	ros-indigo/hector_mapping
	ros-indigo/master_discovery_fkie
	ros-indigo/master_sync_fkie
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

