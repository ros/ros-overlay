# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Common tools for image based pipelines. Includes stereo and mono camera drivers, rectification, image sinks, calibration, etc.."
HOMEPAGE="http://plasmodic.github.io/ecto_image_pipeline/"
SRC_URI="https://github.com/ros-gbp/ecto_image_pipeline-release/archive/release/kinetic/ecto_image_pipeline/0.5.7-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/opencv_candidate
    ros-kinetic/ecto_opencv
    ros-kinetic/ecto
    ros-kinetic/ecto_ros
    dev-cpp/eigen
    dev-libs/boost
"
DEPEND="
    ros-kinetic/opencv_candidate
    ros-kinetic/ecto
    ros-kinetic/cmake_modules
    dev-libs/boost
    dev-cpp/eigen
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
