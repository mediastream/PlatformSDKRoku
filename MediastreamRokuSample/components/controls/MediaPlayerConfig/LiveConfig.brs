function getLiveConfig(config as dynamic, msConfig as dynamic) as object
  configData = {}
  configData = config
  configData.id = "60b578b060947317de7b57ac"
  configData.accountID = "5fea0f3673148d5d52cf6a76"
  configData.type = msConfig.videoTypes.LIVE
  configData.environment = msConfig.environment.PRODUCTION
  return configData
end function