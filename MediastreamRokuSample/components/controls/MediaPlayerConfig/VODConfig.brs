function getVODConfig(config as dynamic, msConfig as dynamic) as object
  configData = {}
  configData = config
  configData.id = "64b757053b13bb089d86d994"
  configData.accountID = "5fea0f3673148d5d52cf6a76"
  configData.type = msConfig.videoTypes.VOD
  configData.environment = msConfig.environment.PRODUCTION
  return configData
end function
