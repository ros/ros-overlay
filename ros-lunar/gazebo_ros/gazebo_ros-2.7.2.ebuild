# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="NONE"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/lunar/gazebo_ros/2.7.2-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/dynamic_reconfigure
	ros-lunar/gazebo_dev
	ros-lunar/gazebo_msgs
	ros-lunar/geometry_msgs
	ros-lunar/roscpp
	ros-lunar/rosgraph_msgs
	ros-lunar/roslib
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/tf
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_prepare() {
	cd ${P}
	EPATCH_SOURCE="${FILESDIR}"EPATCH_SUFFIX="patch" \
				 EPATCH_FORCE="yes" epatch
ros-cmake_src_prepare
}

