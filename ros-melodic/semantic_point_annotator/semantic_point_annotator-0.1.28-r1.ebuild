# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A node which annotates 3D point cloud data with semantic labels."
HOMEPAGE="http://pr.willowgarage.com"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/melodic/${PN}/0.1.28-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/tf
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
