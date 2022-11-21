description = "GNU ARM embedded toolchain (xPack)"
test = "arm-none-eabi-gcc --version"
binaries = ["bin/*"]
strip = 1

vars = {"arch_": "${arch}"}

platform "amd64" {
  vars = {"arch_": "x64"}
}

source = "https://github.com/xpack-dev-tools/arm-none-eabi-gcc-xpack/releases/download/v${version}/xpack-arm-none-eabi-gcc-${version}-${os}-${arch_}.tar.gz"

version "10.3.1-2.3" "11.3.1-1.1" {
  auto-version {
    github-release = "xpack-dev-tools/arm-none-eabi-gcc-xpack"
  }
}
