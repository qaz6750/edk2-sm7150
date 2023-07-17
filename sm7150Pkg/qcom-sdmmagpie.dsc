[Defines]
  PLATFORM_NAME                  = sdmmagpie
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = sm7150Pkg/sm7150Pkg.fdf

!include sm7150Pkg/sm7150Pkg.dsc

[PcdsFixedAtBuild.common]
  # System Memory (6GB)
  gArmTokenSpaceGuid.PcdSystemMemorySize|0x180000000