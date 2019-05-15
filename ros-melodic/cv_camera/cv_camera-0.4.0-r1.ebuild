# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="cv_camera uses OpenCV capture object to capture camera image.\
  This suppo[...]"
HOMEPAGE="http://wiki.ros.org/cv_camera"
SRC_URI="https://github.com/OTL/${PN}-release/archive/release/melodic/${PN}/0.4.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/camera_info_manager
	ros-melodic/cv_bridge
	ros-melodic/image_transport
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslint
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
