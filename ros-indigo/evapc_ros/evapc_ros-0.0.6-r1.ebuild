# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The evapc_ros meta package provides all the basic packages for model and na[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/inomuh/evapc_ros-release/archive/release/indigo/evapc_ros/0.0.6-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/evapc_start
	ros-indigo/evarobot_description
	ros-indigo/evarobot_diagnostics
	ros-indigo/evarobot_navigation
	ros-indigo/evarobot_pose_ekf
	ros-indigo/evarobot_slam
	ros-indigo/evarobot_state_publisher
	ros-indigo/evarobot_viz
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
