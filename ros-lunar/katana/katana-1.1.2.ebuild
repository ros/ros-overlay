# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="NONE"
HOMEPAGE="http://ros.org/wiki/katana"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana/1.1.2-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/actionlib
	ros-lunar/control_msgs
	ros-lunar/geometry_msgs
	ros-lunar/katana_msgs
	ros-lunar/kni
	ros-lunar/moveit_msgs
	ros-lunar/roscpp
	ros-lunar/roslib
	ros-lunar/sensor_msgs
	ros-lunar/std_srvs
	ros-lunar/tf
	ros-lunar/trajectory_msgs
	ros-lunar/urdf
	sci-libs/armadillo
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

