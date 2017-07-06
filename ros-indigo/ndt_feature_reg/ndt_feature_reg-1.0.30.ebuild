# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ndt_feature_reg"
HOMEPAGE="http://ros.org/wiki/ndt_feature_reg"
SRC_URI="https://github.com/tstoyanov/perception_oru-release/archive/release/indigo/ndt_feature_reg/1.0.30-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/image_geometry
	ros-indigo/image_transport
	ros-indigo/laser_geometry
	ros-indigo/ndt_map
	ros-indigo/ndt_registration
	ros-indigo/ndt_visualisation
	ros-indigo/sensor_msgs
	ros-indigo/std_srvs
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

